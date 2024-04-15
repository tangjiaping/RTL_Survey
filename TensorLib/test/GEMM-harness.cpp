
#include "VGEMM.h"
#include "verilated.h"
#include "veri_api.h"
#if VM_TRACE
#include "verilated_vcd_c.h"
#endif
#include <iostream>
#include <random>

class GEMM_api_t: public sim_api_t<VerilatorDataWrapper*> {
    public:
    GEMM_api_t(VGEMM* _dut) {
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
        sim_data.inputs.push_back(new VerilatorCData(&(dut->io_out_valid)));
        sim_data.inputs.push_back(new VerilatorCData(&(dut->io_exec_valid)));
        sim_data.inputs.push_back(new VerilatorSData(&(dut->io_data_1_in_0_bits_bits)));
        sim_data.inputs.push_back(new VerilatorCData(&(dut->io_data_1_in_0_bits_valid)));
        sim_data.inputs.push_back(new VerilatorCData(&(dut->io_data_1_in_0_valid)));
        sim_data.inputs.push_back(new VerilatorSData(&(dut->io_data_1_in_1_bits_bits)));
        sim_data.inputs.push_back(new VerilatorCData(&(dut->io_data_1_in_1_bits_valid)));
        sim_data.inputs.push_back(new VerilatorCData(&(dut->io_data_1_in_1_valid)));
        sim_data.inputs.push_back(new VerilatorSData(&(dut->io_data_1_in_2_bits_bits)));
        sim_data.inputs.push_back(new VerilatorCData(&(dut->io_data_1_in_2_bits_valid)));
        sim_data.inputs.push_back(new VerilatorCData(&(dut->io_data_1_in_2_valid)));
        sim_data.inputs.push_back(new VerilatorSData(&(dut->io_data_1_in_3_bits_bits)));
        sim_data.inputs.push_back(new VerilatorCData(&(dut->io_data_1_in_3_bits_valid)));
        sim_data.inputs.push_back(new VerilatorCData(&(dut->io_data_1_in_3_valid)));
        sim_data.inputs.push_back(new VerilatorSData(&(dut->io_data_2_in_0_bits_bits)));
        sim_data.inputs.push_back(new VerilatorCData(&(dut->io_data_2_in_0_bits_valid)));
        sim_data.inputs.push_back(new VerilatorCData(&(dut->io_data_2_in_0_valid)));
        sim_data.inputs.push_back(new VerilatorSData(&(dut->io_data_2_in_1_bits_bits)));
        sim_data.inputs.push_back(new VerilatorCData(&(dut->io_data_2_in_1_bits_valid)));
        sim_data.inputs.push_back(new VerilatorCData(&(dut->io_data_2_in_1_valid)));
        sim_data.inputs.push_back(new VerilatorSData(&(dut->io_data_2_in_2_bits_bits)));
        sim_data.inputs.push_back(new VerilatorCData(&(dut->io_data_2_in_2_bits_valid)));
        sim_data.inputs.push_back(new VerilatorCData(&(dut->io_data_2_in_2_valid)));
        sim_data.inputs.push_back(new VerilatorSData(&(dut->io_data_2_in_3_bits_bits)));
        sim_data.inputs.push_back(new VerilatorCData(&(dut->io_data_2_in_3_bits_valid)));
        sim_data.inputs.push_back(new VerilatorCData(&(dut->io_data_2_in_3_valid)));
        sim_data.outputs.push_back(new VerilatorSData(&(dut->io_data_0_out_0_bits)));
        sim_data.outputs.push_back(new VerilatorCData(&(dut->io_data_0_out_0_valid)));
        sim_data.outputs.push_back(new VerilatorSData(&(dut->io_data_0_out_1_bits)));
        sim_data.outputs.push_back(new VerilatorCData(&(dut->io_data_0_out_1_valid)));
        sim_data.outputs.push_back(new VerilatorSData(&(dut->io_data_0_out_2_bits)));
        sim_data.outputs.push_back(new VerilatorCData(&(dut->io_data_0_out_2_valid)));
        sim_data.outputs.push_back(new VerilatorSData(&(dut->io_data_0_out_3_bits)));
        sim_data.outputs.push_back(new VerilatorCData(&(dut->io_data_0_out_3_valid)));
        sim_data.signals.push_back(new VerilatorCData(&(dut->reset)));
        sim_data.signal_map["GEMM.reset"] = 0;
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
    VGEMM* dut;
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
static GEMM_api_t * _Top_api;
double sc_time_stamp () { return _Top_api->get_time_stamp(); }

// Override Verilator definition so first $finish ends simulation
// Note: VL_USER_FINISH needs to be defined when compiling Verilator code
//void vl_finish(const char* filename, int linenum, const char* hier) {
//  Verilated::flushCall();
//  exit(0);
//}

void matrix_display(std::vector<std::vector<int>>& mat) {
    for(auto& row : mat) {
        for(auto col : row) {
            std::cout << col << "\t";
        }
        std::cout << std::endl;
    }
}
void step(int n) {
    for(int i = 0; i < n; i++) {
        _Top_api->step();
    }
}

int main(int argc, char **argv, char **env) {
    Verilated::commandArgs(argc, argv);
    VGEMM* top = new VGEMM;
    std::string vcdfile = "test_run_dir/tensorlib.Test_Gemm445955851/GEMM.vcd";
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
    GEMM_api_t api(top);
    _Top_api = &api; /* required for sc_time_stamp() */
    api.init_sim_data();
//    api.init_channels();
#if VM_TRACE
    api.init_dump(tfp);
#endif
//    while(!api.exit()) api.tick();

    std::random_device rd;
    std::mt19937 gen(rd());
    std::uniform_int_distribution<> dis(0,10);
    int k_len = 4;
    int c_len = 10;
    int x_len = 4;

    std::vector<std::vector<int>> mat1(k_len, std::vector<int>(c_len, 0));
    std::vector<std::vector<int>> mat2(c_len, std::vector<int>(x_len, 0));

    for(int i = 0; i < k_len; i++) {
        for (int j = 0; j < c_len; j++) {
//            mat1[i][j] = 1;
            mat1[i][j] = dis(gen);
        }
    }
    for(int i = 0; i < c_len; i++) {
        for(int j = 0; j < x_len; j++) {
//            mat2[i][j] = 2;
            mat2[i][j] = dis(gen);
        }
    }

    std::vector<std::vector<int>> ref(k_len, std::vector<int>(x_len, 0));
    for(int i = 0; i < k_len; i++) {
        for(int j = 0; j < x_len; j++) {
            for(int k = 0; k < c_len; k++) {
                ref[i][j] += mat1[i][k] * mat2[k][j];
            }
        }
    }

    std::cout << "mat1: " << std::endl;
    matrix_display(mat1);
    std::cout << "mat2: " << std::endl;
    matrix_display(mat2);
    std::cout << "ref: " << std::endl;
    matrix_display(ref);


    for(int i = 0; i < c_len; i++) {
        top->io_data_1_in_0_valid = true;
        top->io_data_1_in_0_bits_valid = true;
        top->io_data_1_in_0_bits_bits = mat1[0][i];

        top->io_data_1_in_1_valid = true;
        top->io_data_1_in_1_bits_valid = true;
        top->io_data_1_in_1_bits_bits = mat1[1][i];

        top->io_data_1_in_2_valid = true;
        top->io_data_1_in_2_bits_valid = true;
        top->io_data_1_in_2_bits_bits = mat1[2][i];

        top->io_data_1_in_3_valid = true;
        top->io_data_1_in_3_bits_valid = true;
        top->io_data_1_in_3_bits_bits = mat1[3][i];

        top->io_data_2_in_0_valid = true;
        top->io_data_2_in_0_bits_valid = true;
        top->io_data_2_in_0_bits_bits = mat2[i][0];

        top->io_data_2_in_1_valid = true;
        top->io_data_2_in_1_bits_valid = true;
        top->io_data_2_in_1_bits_bits = mat2[i][1];

        top->io_data_2_in_2_valid = true;
        top->io_data_2_in_2_bits_valid = true;
        top->io_data_2_in_2_bits_bits = mat2[i][2];

        top->io_data_2_in_3_valid = true;
        top->io_data_2_in_3_bits_valid = true;
        top->io_data_2_in_3_bits_bits = mat2[i][3];

        top->io_exec_valid = false;
        top->io_out_valid = false;
        step(1);
    }

    for (int i = 0; i < c_len + k_len + x_len; i++) {
        top->io_data_1_in_0_valid = false;
        top->io_data_1_in_0_bits_valid = false;
        top->io_data_1_in_0_bits_bits = 0;

        top->io_data_1_in_1_valid = false;
        top->io_data_1_in_1_bits_valid = false;
        top->io_data_1_in_1_bits_bits = 0;

        top->io_data_1_in_2_valid = false;
        top->io_data_1_in_2_bits_valid = false;
        top->io_data_1_in_2_bits_bits = 0;

        top->io_data_1_in_3_valid = false;
        top->io_data_1_in_3_bits_valid = false;
        top->io_data_1_in_3_bits_bits = 0;

        top->io_data_2_in_0_valid = false;
        top->io_data_2_in_0_bits_valid = false;
        top->io_data_2_in_0_bits_bits = 0;

        top->io_data_2_in_1_valid = false;
        top->io_data_2_in_1_bits_valid = false;
        top->io_data_2_in_1_bits_bits = 0;

        top->io_data_2_in_2_valid = false;
        top->io_data_2_in_2_bits_valid = false;
        top->io_data_2_in_2_bits_bits = 0;

        top->io_data_2_in_3_valid = false;
        top->io_data_2_in_3_bits_valid = false;
        top->io_data_2_in_3_bits_bits = 0;

        top->io_exec_valid = true;
        top->io_out_valid = false;
        step(1);
    }
    for(int i = 0; i < k_len * 3; i++) {
        top->io_data_1_in_0_valid = false;
        top->io_data_1_in_0_bits_valid = false;
        top->io_data_1_in_0_bits_bits = 0;

        top->io_data_1_in_1_valid = false;
        top->io_data_1_in_1_bits_valid = false;
        top->io_data_1_in_1_bits_bits = 0;

        top->io_data_1_in_2_valid = false;
        top->io_data_1_in_2_bits_valid = false;
        top->io_data_1_in_2_bits_bits = 0;

        top->io_data_1_in_3_valid = false;
        top->io_data_1_in_3_bits_valid = false;
        top->io_data_1_in_3_bits_bits = 0;

        top->io_data_2_in_0_valid = false;
        top->io_data_2_in_0_bits_valid = false;
        top->io_data_2_in_0_bits_bits = 0;

        top->io_data_2_in_1_valid = false;
        top->io_data_2_in_1_bits_valid = false;
        top->io_data_2_in_1_bits_bits = 0;

        top->io_data_2_in_2_valid = false;
        top->io_data_2_in_2_bits_valid = false;
        top->io_data_2_in_2_bits_bits = 0;

        top->io_data_2_in_3_valid = false;
        top->io_data_2_in_3_bits_valid = false;
        top->io_data_2_in_3_bits_bits = 0;

        top->io_exec_valid = false;
        top->io_out_valid = false;
        step(1);
    }
    int out_col = 0;
    std::vector<std::vector<int>> out(k_len, std::vector<int>(x_len,0));
    while (out_col < k_len * x_len) {
        top->io_data_1_in_0_valid = false;
        top->io_data_1_in_0_bits_valid = false;
        top->io_data_1_in_0_bits_bits = 0;

        top->io_data_1_in_1_valid = false;
        top->io_data_1_in_1_bits_valid = false;
        top->io_data_1_in_1_bits_bits = 0;

        top->io_data_1_in_2_valid = false;
        top->io_data_1_in_2_bits_valid = false;
        top->io_data_1_in_2_bits_bits = 0;

        top->io_data_1_in_3_valid = false;
        top->io_data_1_in_3_bits_valid = false;
        top->io_data_1_in_3_bits_bits = 0;

        top->io_data_2_in_0_valid = false;
        top->io_data_2_in_0_bits_valid = false;
        top->io_data_2_in_0_bits_bits = 0;

        top->io_data_2_in_1_valid = false;
        top->io_data_2_in_1_bits_valid = false;
        top->io_data_2_in_1_bits_bits = 0;

        top->io_data_2_in_2_valid = false;
        top->io_data_2_in_2_bits_valid = false;
        top->io_data_2_in_2_bits_bits = 0;

        top->io_data_2_in_3_valid = false;
        top->io_data_2_in_3_bits_valid = false;
        top->io_data_2_in_3_bits_bits = 0;

        if (top->io_data_0_out_0_valid) {
//            std::cout << top->io_data_0_out_0_bits << std::endl;
            out[0][out_col / x_len] = top->io_data_0_out_0_bits;
            out_col += 1;
        }
        if (top->io_data_0_out_1_valid) {
//            std::cout << top->io_data_0_out_1_bits << std::endl;
            out[1][out_col / x_len] = top->io_data_0_out_1_bits;
            out_col += 1;
        }
        if (top->io_data_0_out_2_valid) {
//            std::cout << top->io_data_0_out_2_bits << std::endl;
            out[2][out_col / x_len] = top->io_data_0_out_2_bits;
            out_col += 1;
        }
        if (top->io_data_0_out_3_valid) {
//            std::cout << top->io_data_0_out_3_bits << std::endl;
            out[3][out_col / x_len] = top->io_data_0_out_3_bits;
            out_col += 1;
        }


        top->io_exec_valid = false;
        top->io_out_valid = true;
        step(1);
    }
    std::cout << "out: " << std::endl;
    matrix_display(out);
    for(int i = 0; i < k_len; i++) {
        for(int j = 0; j < x_len; j++) {
            assert(ref[i][j] == out[i][j]);
        }
    }

    std::cout << "\nFrame: " << api.main_time << std::endl;
    std::cout << "PASS" << std::endl;

#if VM_TRACE
    if (tfp) tfp->close();
    delete tfp;
#endif
    delete top;
    exit(0);
}
