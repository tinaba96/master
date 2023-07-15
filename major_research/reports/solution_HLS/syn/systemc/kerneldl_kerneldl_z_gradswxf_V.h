// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __kerneldl_kerneldl_z_gradswxf_V_H__
#define __kerneldl_kerneldl_z_gradswxf_V_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct kerneldl_kerneldl_z_gradswxf_V_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 16;
  static const unsigned AddressRange = 102400;
  static const unsigned AddressWidth = 17;

//latency = 2
//input_reg = 1
//output_reg = 1
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> we0;
sc_core::sc_in<sc_lv<DataWidth> > d0;
sc_core::sc_in <sc_lv<AddressWidth> > address1;
sc_core::sc_in <sc_logic> ce1;
sc_core::sc_in<sc_logic> we1;
sc_core::sc_in<sc_lv<DataWidth> > d1;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


sc_core::sc_signal<sc_lv<DataWidth> > q0_t0;
sc_core::sc_signal<sc_lv<DataWidth> > q0_t1;
   SC_CTOR(kerneldl_kerneldl_z_gradswxf_V_ram) {
SC_METHOD(prc_comb_0);
  sensitive<<q0_t1;
SC_METHOD(prc_comb_1);

SC_METHOD(prc_seq);
  sensitive<<clk.pos(); 


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();


SC_METHOD(prc_write_1);
  sensitive<<clk.pos();
   }

void prc_comb_0() {
  q0 = q0_t1.read();
}
void prc_comb_1() {
}

void prc_seq() { 
    q0_t1 = q0_t0.read();
}

void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
        if (we0.read() == sc_dt::Log_1) 
        {
           if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
           {
              ram[address0.read().to_uint()] = d0.read(); 
              q0_t0 = d0.read();
           }
           else
              q0_t0 = sc_lv<DataWidth>();
        }
        else {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0_t0 = ram[address0.read().to_uint()];
            else
              q0_t0 = sc_lv<DataWidth>();
        }
    }
}


void prc_write_1()
{
    if (ce1.read() == sc_dt::Log_1) 
    {
        if (we1.read() == sc_dt::Log_1) 
        {
           if(address1.read().is_01() && address1.read().to_uint()<AddressRange)
           {
              ram[address1.read().to_uint()] = d1.read(); 
           }
        }
    }
}


}; //endmodule


SC_MODULE(kerneldl_kerneldl_z_gradswxf_V) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 102400;
static const unsigned AddressWidth = 17;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> we0;
sc_core::sc_in<sc_lv<DataWidth> > d0;
sc_core::sc_in <sc_lv<AddressWidth> > address1;
sc_core::sc_in<sc_logic> ce1;
sc_core::sc_in<sc_logic> we1;
sc_core::sc_in<sc_lv<DataWidth> > d1;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


kerneldl_kerneldl_z_gradswxf_V_ram* meminst;


SC_CTOR(kerneldl_kerneldl_z_gradswxf_V) {
meminst = new kerneldl_kerneldl_z_gradswxf_V_ram("kerneldl_kerneldl_z_gradswxf_V_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);
meminst->we0(we0);
meminst->d0(d0);

meminst->address1(address1);
meminst->ce1(ce1);
meminst->we1(we1);
meminst->d1(d1);

meminst->reset(reset);
meminst->clk(clk);
}
~kerneldl_kerneldl_z_gradswxf_V() {
    delete meminst;
}


};//endmodule
#endif
