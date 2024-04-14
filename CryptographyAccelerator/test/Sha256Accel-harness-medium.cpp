
#include "VSha256Accel.h"
#include "verilated.h"
#include "veri_api.h"
#if VM_TRACE
#include "verilated_vcd_c.h"
#endif
#include <iostream>
class Sha256Accel_api_t: public sim_api_t<VerilatorDataWrapper*> {
    public:
    Sha256Accel_api_t(VSha256Accel* _dut) {
        dut = _dut;
        main_time = 0L;
        is_exit = false;
#if VM_TRACE
        tfp = NULL;
#endif
    }
    void init_sim_data() {
        sim_data.inputs.clear();
        sim_data.outputs.clear();
        sim_data.signals.clear();

        sim_data.inputs.push_back(new VerilatorCData(&(dut->clock)));
        sim_data.inputs.push_back(new VerilatorCData(&(dut->reset)));
        sim_data.inputs.push_back(new VerilatorCData(&(dut->io_inputValid)));
        sim_data.inputs.push_back(new VerilatorIData(&(dut->io_inputData)));
        sim_data.inputs.push_back(new VerilatorCData(&(dut->io_first)));
        sim_data.outputs.push_back(new VerilatorCData(&(dut->io_outputValid)));
        sim_data.outputs.push_back(new VerilatorIData(&(dut->io_outputData_0)));
        sim_data.outputs.push_back(new VerilatorIData(&(dut->io_outputData_1)));
        sim_data.outputs.push_back(new VerilatorIData(&(dut->io_outputData_2)));
        sim_data.outputs.push_back(new VerilatorIData(&(dut->io_outputData_3)));
        sim_data.outputs.push_back(new VerilatorIData(&(dut->io_outputData_4)));
        sim_data.outputs.push_back(new VerilatorIData(&(dut->io_outputData_5)));
        sim_data.outputs.push_back(new VerilatorIData(&(dut->io_outputData_6)));
        sim_data.outputs.push_back(new VerilatorIData(&(dut->io_outputData_7)));
        sim_data.outputs.push_back(new VerilatorCData(&(dut->io_inputReady)));
        sim_data.signals.push_back(new VerilatorCData(&(dut->reset)));
        sim_data.signal_map["Sha256Accel.reset"] = 0;
    }
#if VM_TRACE
     void init_dump(VerilatedVcdC* _tfp) { tfp = _tfp; }
#endif
    inline bool exit() { return is_exit; }

    // required for sc_time_stamp()
    virtual inline double get_time_stamp() {
        return main_time;
    }

    virtual inline void step() {
        dut->clock = 0;
        dut->eval();
#if VM_TRACE
        if (tfp) tfp->dump(main_time);
#endif
        main_time++;
        dut->clock = 1;
        dut->eval();
#if VM_TRACE
        if (tfp) tfp->dump(main_time);
#endif
        main_time++;
    }

public:
    VSha256Accel* dut;
    bool is_exit;
    vluint64_t main_time;
#if VM_TRACE
    VerilatedVcdC* tfp;
#endif
    virtual inline size_t put_value(VerilatorDataWrapper* &sig, uint64_t* data, bool force=false) {
        return sig->put_value(data);
    }
    virtual inline size_t get_value(VerilatorDataWrapper* &sig, uint64_t* data) {
        return sig->get_value(data);
    }
    virtual inline size_t get_chunk(VerilatorDataWrapper* &sig) {
        return sig->get_num_words();
    }
    virtual inline void reset() {
        dut->reset = 1;
        step();
    }
    virtual inline void start() {
        dut->reset = 0;
    }
    virtual inline void finish() {
        dut->eval();
        is_exit = true;
    }

    virtual inline void update() {
        // This seems to force a full eval of circuit, so registers with alternate clocks are update correctly
        dut->eval();
        // This was the original call, did not refresh registers when some  other clock transitioned
        // dut->_eval_settle(dut->__VlSymsp);
    }
};

// The following isn't strictly required unless we emit (possibly indirectly) something
// requiring a time-stamp (such as an assert).
static Sha256Accel_api_t * _Top_api;
double sc_time_stamp () { return _Top_api->get_time_stamp(); }

// Override Verilator definition so first $finish ends simulation
// Note: VL_USER_FINISH needs to be defined when compiling Verilator code
//void vl_finish(const char* filename, int linenum, const char* hier) {
//  Verilated::flushCall();
//  exit(0);
//}

void step(int n) {
    for(int i = 0; i < n; i++) {
        _Top_api->step();
    }
}
#define poke(Signal, Value) (Signal) = (Value)
#define except(Signal, Value) assert((Signal) == (Value))
int main(int argc, char **argv, char **env) {
    Verilated::commandArgs(argc, argv);
    VSha256Accel* top = new VSha256Accel;
    std::string vcdfile = "test_build/Sha256Accel.vcd";
    std::vector<std::string> args(argv+1, argv+argc);
    std::vector<std::string>::const_iterator it;
    for (it = args.begin() ; it != args.end() ; it++) {
        if (it->find("+waveform=") == 0) vcdfile = it->c_str()+10;
    }
#if VM_TRACE
    Verilated::traceEverOn(true);
    VL_PRINTF("Enabling waves..");
    VerilatedVcdC* tfp = new VerilatedVcdC;
    top->trace(tfp, 99);
    tfp->open(vcdfile.c_str());
#endif
    Sha256Accel_api_t api(top);
    _Top_api = &api; /* required for sc_time_stamp() */
    api.init_sim_data();
//    api.init_channels();
#if VM_TRACE
    api.init_dump(tfp);
#endif
//    while(!api.exit()) api.tick();


    // large data
    std::vector<uint32_t> dataIn = {0x33613537l, 0x63643330l, 0x35363066l, 0x62326637l,
              0x32383361l, 0x37343333l, 0x65636539l, 0x31393436l,
              0x61633664l, 0x61346234l, 0x30343063l, 0x38633337l,
              0x61666135l, 0x36343031l, 0x39396465l, 0x64353964l,
              0x80000000l, 0x00000000l, 0x00000000l, 0x00000000l,
              0x00000000l, 0x00000000l, 0x00000000l, 0x00000000l,
              0x00000000l, 0x00000000l, 0x00000000l, 0x00000000l,
              0x00000000l, 0x00000000l, 0x00000000l, 0x00000200l};
    std::vector<uint32_t> expected = {0x41812DC6l, 0x0561798Dl, 0xC0CC6E57l, 0x4B641893l, 0xECF4186Dl, 0x4097283Al, 0xF4A6CFF3l, 0xEDDAA4A0l};

    top->io_inputValid = false;
    top->io_first = true;
    step(1);
    top->io_first = false;
    step(50);


    for(int i = 0; i < dataIn.size(); i++) {
        while (top->io_inputReady == 0) step(1);
        top->io_inputValid = true;
        top->io_inputData = dataIn[i];
        step(1);
        top->io_inputValid = false;
        step(3);
    }
    top->io_inputData = 0x12345678l;
    for(int i = 0; i < 50; i++) {
        step(1);
        if ((top->io_outputValid) == 1 || (top->io_inputReady) == 1) break;
    }
    assert(top->io_outputValid == 1);

//    std::cout << "io_outputData_0: " << std::hex << top->io_outputData_0 << std::endl;
    assert(top->io_outputData_0 == expected[0]);

//    std::cout << "io_outputData_1: " << std::hex << top->io_outputData_1 << std::endl;
    assert(top->io_outputData_1 == expected[1]);

//    std::cout << "io_outputData_2: " << std::hex << top->io_outputData_2 << std::endl;
    assert(top->io_outputData_2 == expected[2]);

//    std::cout << "io_outputData_3: " << std::hex << top->io_outputData_3 << std::endl;
    assert(top->io_outputData_3 == expected[3]);

//    std::cout << "io_outputData_4: " << std::hex << top->io_outputData_4 << std::endl;
    assert(top->io_outputData_4 == expected[4]);

//    std::cout << "io_outputData_5: " << std::hex << top->io_outputData_5 << std::endl;
    assert(top->io_outputData_5 == expected[5]);

//    std::cout << "io_outputData_6: " << std::hex << top->io_outputData_6 << std::endl;
    assert(top->io_outputData_6 == expected[6]);

//    std::cout << "io_outputData_7: " << std::hex << top->io_outputData_7 << std::endl;
    assert(top->io_outputData_7 == expected[7]);

    // large interruption
    dataIn = {0x33613537l, 0x63643330l, 0x35363066l, 0x62326637l,
              0x32383361l, 0x37343333l, 0x65636539l, 0x31393436l,
              0x61633664l, 0x61346234l, 0x30343063l, 0x38633337l,
              0x61666135l, 0x36343031l, 0x39396465l, 0x64353964l,
              0x80000000l, 0x00000000l, 0x00000000l, 0x00000000l,
              0x00000000l, 0x00000000l, 0x00000000l, 0x00000000l,
              0x00000000l, 0x00000000l, 0x00000000l, 0x00000000l,
              0x00000000l, 0x00000000l, 0x00000000l, 0x00000200l};
    expected = {0x41812DC6l, 0x0561798Dl, 0xC0CC6E57l, 0x4B641893l, 0xECF4186Dl, 0x4097283Al, 0xF4A6CFF3l, 0xEDDAA4A0l};
    top->io_inputValid = false;
    top->io_first = true;
    step(1);
    top->io_first = false;
    step(50);
    for(int i = 0; i < 19; i++) {
        while (top->io_inputReady == 0) step(1);
        top->io_inputValid = true;
        top->io_inputData = dataIn[i];
        step(1);
        top->io_inputValid = false;
        step(3);
    }
    step(100);




#if VM_TRACE
    if (tfp) tfp->close();
    delete tfp;
#endif
    delete top;
    std::cout << "Frame: " << api.main_time << std::endl;
    std::cout << "PASS" << std::endl;
    exit(0);
}
