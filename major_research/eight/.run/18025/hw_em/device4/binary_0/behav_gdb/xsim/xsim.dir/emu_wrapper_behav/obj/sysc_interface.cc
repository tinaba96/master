#pragma GCC diagnostic ignored "-Wdeprecated-declarations" 
#include "xsim.dir/emu_wrapper_behav/obj/sysc_interface.h"
#include <map>
#include <list>


extern "C" { std::map<unsigned int, std::pair<unsigned int, std::list < void*> > > *_glb_hdl_sc_channel_map; } 



extern "C"
    void call_HDL_SC_WRITE(unsigned int netid, int len, char* pval)
    {
        unsigned int data_type = (*_glb_hdl_sc_channel_map)[netid].first;
        std::list<void*> list_of_ch = (*_glb_hdl_sc_channel_map)[netid].second;
        switch (data_type) {
            case 0 /*int*/ : { 
                int val = *((int*)(pval));
                for ( std::list<void*>::iterator it = list_of_ch.begin(); it != list_of_ch.end(); ++it)
                    ((xsim_sc_channel<0,int>*)(*it))->update_from_hdl(val);
                break;
            } 
            case 1 /*bool*/ : { 
                bool val = *((bool*)(pval));
                for ( std::list<void*>::iterator it = list_of_ch.begin(); it != list_of_ch.end(); ++it)
                    ((xsim_sc_channel<0,bool>*)(*it))->update_from_hdl(val);
                break;
            } 
            case 2 /*sc_logic*/ : { 
                sc_dt::sc_logic val  =  (sc_dt::sc_logic_value_t) (((*((int*)(pval)+1) & 0x1) << 1) | (*((int*)(pval)) & 0x1));
                for ( std::list<void*>::iterator it = list_of_ch.begin(); it != list_of_ch.end(); ++it)
                    ((xsim_sc_channel<0, sc_dt::sc_logic>*)(*it))->update_from_hdl(val);
                break;
            } 
            case 3 /*sc_bv*/ : { 
                switch (len) { 
                    case 1 : { 
                        for ( std::list<void*>::iterator it = list_of_ch.begin(); it != list_of_ch.end(); ++it)
                            ((xsim_sc_channel<1, sc_dt::sc_bv<1> >*)(*it))->update_from_hdl(pval);
                        break;
                    }
                    case 2 : { 
                        for ( std::list<void*>::iterator it = list_of_ch.begin(); it != list_of_ch.end(); ++it)
                            ((xsim_sc_channel<2, sc_dt::sc_bv<2> >*)(*it))->update_from_hdl(pval);
                        break;
                    }
                    case 3 : { 
                        for ( std::list<void*>::iterator it = list_of_ch.begin(); it != list_of_ch.end(); ++it)
                            ((xsim_sc_channel<3, sc_dt::sc_bv<3> >*)(*it))->update_from_hdl(pval);
                        break;
                    }
                    case 8 : { 
                        for ( std::list<void*>::iterator it = list_of_ch.begin(); it != list_of_ch.end(); ++it)
                            ((xsim_sc_channel<8, sc_dt::sc_bv<8> >*)(*it))->update_from_hdl(pval);
                        break;
                    }
                    case 36 : { 
                        for ( std::list<void*>::iterator it = list_of_ch.begin(); it != list_of_ch.end(); ++it)
                            ((xsim_sc_channel<36, sc_dt::sc_bv<36> >*)(*it))->update_from_hdl(pval);
                        break;
                    }
                        default: 
                            std::cout << "Error, unknown bitvector length: " << len << " NOT supported " << std::endl;
                            assert(0);
                }; 
                break;
            } 
            case 5 /*bit*/ : { 
                sc_dt::sc_bit val  =  (sc_dt::sc_bit)((*((int*)(pval)) & 0x1));
                for ( std::list<void*>::iterator it = list_of_ch.begin(); it != list_of_ch.end(); ++it)
                    ((xsim_sc_channel<0, sc_dt::sc_bit>*)(*it))->update_from_hdl(val);
                break;
            } 
            default: 
                std::cout << "Error, unknown type: " << data_type << " NOT supported " << std::endl;
                assert(0);
        };
    }


extern "C"
    void implicit_HDL_SCinstatiate()
    {
        _glb_hdl_sc_channel_map = new std::map <unsigned int, std::pair<unsigned int, std::list<void*> > > ();
        emu_sim_axi_perf_mon_0_0 *sc_inst_1 = new emu_sim_axi_perf_mon_0_0(".emu_wrapper.emu_i.sim_axi_perf_mon_0");
        sc_inst_1->xsim_set_dbg_index(28);
        xsim_sc_channel<1, sc_dt::sc_bv<1> > *p_1_axi_awid = new xsim_sc_channel<1, sc_dt::sc_bv<1> >();
        sc_inst_1->axi_awid.bind(*p_1_axi_awid);
        (*_glb_hdl_sc_channel_map)[171561].first = 3;
        (*_glb_hdl_sc_channel_map)[171561].second.push_front(p_1_axi_awid);
        xsim_sc_channel<36, sc_dt::sc_bv<36> > *p_1_axi_awaddr = new xsim_sc_channel<36, sc_dt::sc_bv<36> >();
        sc_inst_1->axi_awaddr.bind(*p_1_axi_awaddr);
        (*_glb_hdl_sc_channel_map)[609].first = 3;
        (*_glb_hdl_sc_channel_map)[609].second.push_front(p_1_axi_awaddr);
        xsim_sc_channel<8, sc_dt::sc_bv<8> > *p_1_axi_awlen = new xsim_sc_channel<8, sc_dt::sc_bv<8> >();
        sc_inst_1->axi_awlen.bind(*p_1_axi_awlen);
        (*_glb_hdl_sc_channel_map)[171562].first = 3;
        (*_glb_hdl_sc_channel_map)[171562].second.push_front(p_1_axi_awlen);
        xsim_sc_channel<3, sc_dt::sc_bv<3> > *p_1_axi_awsize = new xsim_sc_channel<3, sc_dt::sc_bv<3> >();
        sc_inst_1->axi_awsize.bind(*p_1_axi_awsize);
        (*_glb_hdl_sc_channel_map)[171564].first = 3;
        (*_glb_hdl_sc_channel_map)[171564].second.push_front(p_1_axi_awsize);
        xsim_sc_channel<2, sc_dt::sc_bv<2> > *p_1_axi_awburst = new xsim_sc_channel<2, sc_dt::sc_bv<2> >();
        sc_inst_1->axi_awburst.bind(*p_1_axi_awburst);
        (*_glb_hdl_sc_channel_map)[171560].first = 3;
        (*_glb_hdl_sc_channel_map)[171560].second.push_front(p_1_axi_awburst);
        xsim_sc_channel<0, bool > *p_1_axi_awvalid = new xsim_sc_channel<0, bool >();
        sc_inst_1->axi_awvalid.bind(*p_1_axi_awvalid);
        (*_glb_hdl_sc_channel_map)[171565].first = 1;
        (*_glb_hdl_sc_channel_map)[171565].second.push_front(p_1_axi_awvalid);
        xsim_sc_channel<0, bool > *p_1_axi_awready = new xsim_sc_channel<0, bool >();
        sc_inst_1->axi_awready.bind(*p_1_axi_awready);
        (*_glb_hdl_sc_channel_map)[171563].first = 1;
        (*_glb_hdl_sc_channel_map)[171563].second.push_front(p_1_axi_awready);
        xsim_sc_channel<0, bool > *p_1_axi_wlast = new xsim_sc_channel<0, bool >();
        sc_inst_1->axi_wlast.bind(*p_1_axi_wlast);
        (*_glb_hdl_sc_channel_map)[171571].first = 1;
        (*_glb_hdl_sc_channel_map)[171571].second.push_front(p_1_axi_wlast);
        xsim_sc_channel<0, bool > *p_1_axi_wvalid = new xsim_sc_channel<0, bool >();
        sc_inst_1->axi_wvalid.bind(*p_1_axi_wvalid);
        (*_glb_hdl_sc_channel_map)[171573].first = 1;
        (*_glb_hdl_sc_channel_map)[171573].second.push_front(p_1_axi_wvalid);
        xsim_sc_channel<0, bool > *p_1_axi_wready = new xsim_sc_channel<0, bool >();
        sc_inst_1->axi_wready.bind(*p_1_axi_wready);
        (*_glb_hdl_sc_channel_map)[171572].first = 1;
        (*_glb_hdl_sc_channel_map)[171572].second.push_front(p_1_axi_wready);
        xsim_sc_channel<0, bool > *p_1_axi_bvalid = new xsim_sc_channel<0, bool >();
        sc_inst_1->axi_bvalid.bind(*p_1_axi_bvalid);
        (*_glb_hdl_sc_channel_map)[171567].first = 1;
        (*_glb_hdl_sc_channel_map)[171567].second.push_front(p_1_axi_bvalid);
        xsim_sc_channel<0, bool > *p_1_axi_bready = new xsim_sc_channel<0, bool >();
        sc_inst_1->axi_bready.bind(*p_1_axi_bready);
        (*_glb_hdl_sc_channel_map)[171566].first = 1;
        (*_glb_hdl_sc_channel_map)[171566].second.push_front(p_1_axi_bready);
        xsim_sc_channel<1, sc_dt::sc_bv<1> > *p_1_axi_arid = new xsim_sc_channel<1, sc_dt::sc_bv<1> >();
        sc_inst_1->axi_arid.bind(*p_1_axi_arid);
        (*_glb_hdl_sc_channel_map)[171555].first = 3;
        (*_glb_hdl_sc_channel_map)[171555].second.push_front(p_1_axi_arid);
        xsim_sc_channel<36, sc_dt::sc_bv<36> > *p_1_axi_araddr = new xsim_sc_channel<36, sc_dt::sc_bv<36> >();
        sc_inst_1->axi_araddr.bind(*p_1_axi_araddr);
        (*_glb_hdl_sc_channel_map)[610].first = 3;
        (*_glb_hdl_sc_channel_map)[610].second.push_front(p_1_axi_araddr);
        xsim_sc_channel<8, sc_dt::sc_bv<8> > *p_1_axi_arlen = new xsim_sc_channel<8, sc_dt::sc_bv<8> >();
        sc_inst_1->axi_arlen.bind(*p_1_axi_arlen);
        (*_glb_hdl_sc_channel_map)[171556].first = 3;
        (*_glb_hdl_sc_channel_map)[171556].second.push_front(p_1_axi_arlen);
        xsim_sc_channel<3, sc_dt::sc_bv<3> > *p_1_axi_arsize = new xsim_sc_channel<3, sc_dt::sc_bv<3> >();
        sc_inst_1->axi_arsize.bind(*p_1_axi_arsize);
        (*_glb_hdl_sc_channel_map)[171558].first = 3;
        (*_glb_hdl_sc_channel_map)[171558].second.push_front(p_1_axi_arsize);
        xsim_sc_channel<2, sc_dt::sc_bv<2> > *p_1_axi_arburst = new xsim_sc_channel<2, sc_dt::sc_bv<2> >();
        sc_inst_1->axi_arburst.bind(*p_1_axi_arburst);
        (*_glb_hdl_sc_channel_map)[171553].first = 3;
        (*_glb_hdl_sc_channel_map)[171553].second.push_front(p_1_axi_arburst);
        xsim_sc_channel<0, bool > *p_1_axi_arvalid = new xsim_sc_channel<0, bool >();
        sc_inst_1->axi_arvalid.bind(*p_1_axi_arvalid);
        (*_glb_hdl_sc_channel_map)[171559].first = 1;
        (*_glb_hdl_sc_channel_map)[171559].second.push_front(p_1_axi_arvalid);
        xsim_sc_channel<0, bool > *p_1_axi_arready = new xsim_sc_channel<0, bool >();
        sc_inst_1->axi_arready.bind(*p_1_axi_arready);
        (*_glb_hdl_sc_channel_map)[171557].first = 1;
        (*_glb_hdl_sc_channel_map)[171557].second.push_front(p_1_axi_arready);
        xsim_sc_channel<1, sc_dt::sc_bv<1> > *p_1_axi_rid = new xsim_sc_channel<1, sc_dt::sc_bv<1> >();
        sc_inst_1->axi_rid.bind(*p_1_axi_rid);
        (*_glb_hdl_sc_channel_map)[608].first = 3;
        (*_glb_hdl_sc_channel_map)[608].second.push_front(p_1_axi_rid);
        xsim_sc_channel<0, bool > *p_1_axi_rlast = new xsim_sc_channel<0, bool >();
        sc_inst_1->axi_rlast.bind(*p_1_axi_rlast);
        (*_glb_hdl_sc_channel_map)[171568].first = 1;
        (*_glb_hdl_sc_channel_map)[171568].second.push_front(p_1_axi_rlast);
        xsim_sc_channel<0, bool > *p_1_axi_rvalid = new xsim_sc_channel<0, bool >();
        sc_inst_1->axi_rvalid.bind(*p_1_axi_rvalid);
        (*_glb_hdl_sc_channel_map)[171570].first = 1;
        (*_glb_hdl_sc_channel_map)[171570].second.push_front(p_1_axi_rvalid);
        xsim_sc_channel<0, bool > *p_1_axi_rready = new xsim_sc_channel<0, bool >();
        sc_inst_1->axi_rready.bind(*p_1_axi_rready);
        (*_glb_hdl_sc_channel_map)[171569].first = 1;
        (*_glb_hdl_sc_channel_map)[171569].second.push_front(p_1_axi_rready);
        xsim_sc_channel<0, bool > *p_1_axi_aclk = new xsim_sc_channel<0, bool >();
        sc_inst_1->axi_aclk.bind(*p_1_axi_aclk);
        (*_glb_hdl_sc_channel_map)[171552].first = 1;
        (*_glb_hdl_sc_channel_map)[171552].second.push_front(p_1_axi_aclk);
        xsim_sc_channel<0, bool > *p_1_axi_aresetn = new xsim_sc_channel<0, bool >();
        sc_inst_1->axi_aresetn.bind(*p_1_axi_aresetn);
        (*_glb_hdl_sc_channel_map)[171554].first = 1;
        (*_glb_hdl_sc_channel_map)[171554].second.push_front(p_1_axi_aresetn);
        emu_sim_axi_perf_mon_1_0 *sc_inst_2 = new emu_sim_axi_perf_mon_1_0(".emu_wrapper.emu_i.sim_axi_perf_mon_1");
        sc_inst_2->xsim_set_dbg_index(29);
        xsim_sc_channel<36, sc_dt::sc_bv<36> > *p_2_axi_awaddr = new xsim_sc_channel<36, sc_dt::sc_bv<36> >();
        sc_inst_2->axi_awaddr.bind(*p_2_axi_awaddr);
        (*_glb_hdl_sc_channel_map)[171582].first = 3;
        (*_glb_hdl_sc_channel_map)[171582].second.push_front(p_2_axi_awaddr);
        xsim_sc_channel<8, sc_dt::sc_bv<8> > *p_2_axi_awlen = new xsim_sc_channel<8, sc_dt::sc_bv<8> >();
        sc_inst_2->axi_awlen.bind(*p_2_axi_awlen);
        (*_glb_hdl_sc_channel_map)[171584].first = 3;
        (*_glb_hdl_sc_channel_map)[171584].second.push_front(p_2_axi_awlen);
        xsim_sc_channel<3, sc_dt::sc_bv<3> > *p_2_axi_awsize = new xsim_sc_channel<3, sc_dt::sc_bv<3> >();
        sc_inst_2->axi_awsize.bind(*p_2_axi_awsize);
        (*_glb_hdl_sc_channel_map)[171586].first = 3;
        (*_glb_hdl_sc_channel_map)[171586].second.push_front(p_2_axi_awsize);
        xsim_sc_channel<2, sc_dt::sc_bv<2> > *p_2_axi_awburst = new xsim_sc_channel<2, sc_dt::sc_bv<2> >();
        sc_inst_2->axi_awburst.bind(*p_2_axi_awburst);
        (*_glb_hdl_sc_channel_map)[171583].first = 3;
        (*_glb_hdl_sc_channel_map)[171583].second.push_front(p_2_axi_awburst);
        xsim_sc_channel<0, bool > *p_2_axi_awvalid = new xsim_sc_channel<0, bool >();
        sc_inst_2->axi_awvalid.bind(*p_2_axi_awvalid);
        (*_glb_hdl_sc_channel_map)[171587].first = 1;
        (*_glb_hdl_sc_channel_map)[171587].second.push_front(p_2_axi_awvalid);
        xsim_sc_channel<0, bool > *p_2_axi_awready = new xsim_sc_channel<0, bool >();
        sc_inst_2->axi_awready.bind(*p_2_axi_awready);
        (*_glb_hdl_sc_channel_map)[171585].first = 1;
        (*_glb_hdl_sc_channel_map)[171585].second.push_front(p_2_axi_awready);
        xsim_sc_channel<0, bool > *p_2_axi_wlast = new xsim_sc_channel<0, bool >();
        sc_inst_2->axi_wlast.bind(*p_2_axi_wlast);
        (*_glb_hdl_sc_channel_map)[171593].first = 1;
        (*_glb_hdl_sc_channel_map)[171593].second.push_front(p_2_axi_wlast);
        xsim_sc_channel<0, bool > *p_2_axi_wvalid = new xsim_sc_channel<0, bool >();
        sc_inst_2->axi_wvalid.bind(*p_2_axi_wvalid);
        (*_glb_hdl_sc_channel_map)[171595].first = 1;
        (*_glb_hdl_sc_channel_map)[171595].second.push_front(p_2_axi_wvalid);
        xsim_sc_channel<0, bool > *p_2_axi_wready = new xsim_sc_channel<0, bool >();
        sc_inst_2->axi_wready.bind(*p_2_axi_wready);
        (*_glb_hdl_sc_channel_map)[171594].first = 1;
        (*_glb_hdl_sc_channel_map)[171594].second.push_front(p_2_axi_wready);
        xsim_sc_channel<0, bool > *p_2_axi_bvalid = new xsim_sc_channel<0, bool >();
        sc_inst_2->axi_bvalid.bind(*p_2_axi_bvalid);
        (*_glb_hdl_sc_channel_map)[171589].first = 1;
        (*_glb_hdl_sc_channel_map)[171589].second.push_front(p_2_axi_bvalid);
        xsim_sc_channel<0, bool > *p_2_axi_bready = new xsim_sc_channel<0, bool >();
        sc_inst_2->axi_bready.bind(*p_2_axi_bready);
        (*_glb_hdl_sc_channel_map)[171588].first = 1;
        (*_glb_hdl_sc_channel_map)[171588].second.push_front(p_2_axi_bready);
        xsim_sc_channel<36, sc_dt::sc_bv<36> > *p_2_axi_araddr = new xsim_sc_channel<36, sc_dt::sc_bv<36> >();
        sc_inst_2->axi_araddr.bind(*p_2_axi_araddr);
        (*_glb_hdl_sc_channel_map)[171575].first = 3;
        (*_glb_hdl_sc_channel_map)[171575].second.push_front(p_2_axi_araddr);
        xsim_sc_channel<8, sc_dt::sc_bv<8> > *p_2_axi_arlen = new xsim_sc_channel<8, sc_dt::sc_bv<8> >();
        sc_inst_2->axi_arlen.bind(*p_2_axi_arlen);
        (*_glb_hdl_sc_channel_map)[171578].first = 3;
        (*_glb_hdl_sc_channel_map)[171578].second.push_front(p_2_axi_arlen);
        xsim_sc_channel<3, sc_dt::sc_bv<3> > *p_2_axi_arsize = new xsim_sc_channel<3, sc_dt::sc_bv<3> >();
        sc_inst_2->axi_arsize.bind(*p_2_axi_arsize);
        (*_glb_hdl_sc_channel_map)[171580].first = 3;
        (*_glb_hdl_sc_channel_map)[171580].second.push_front(p_2_axi_arsize);
        xsim_sc_channel<2, sc_dt::sc_bv<2> > *p_2_axi_arburst = new xsim_sc_channel<2, sc_dt::sc_bv<2> >();
        sc_inst_2->axi_arburst.bind(*p_2_axi_arburst);
        (*_glb_hdl_sc_channel_map)[171576].first = 3;
        (*_glb_hdl_sc_channel_map)[171576].second.push_front(p_2_axi_arburst);
        xsim_sc_channel<0, bool > *p_2_axi_arvalid = new xsim_sc_channel<0, bool >();
        sc_inst_2->axi_arvalid.bind(*p_2_axi_arvalid);
        (*_glb_hdl_sc_channel_map)[171581].first = 1;
        (*_glb_hdl_sc_channel_map)[171581].second.push_front(p_2_axi_arvalid);
        xsim_sc_channel<0, bool > *p_2_axi_arready = new xsim_sc_channel<0, bool >();
        sc_inst_2->axi_arready.bind(*p_2_axi_arready);
        (*_glb_hdl_sc_channel_map)[171579].first = 1;
        (*_glb_hdl_sc_channel_map)[171579].second.push_front(p_2_axi_arready);
        xsim_sc_channel<0, bool > *p_2_axi_rlast = new xsim_sc_channel<0, bool >();
        sc_inst_2->axi_rlast.bind(*p_2_axi_rlast);
        (*_glb_hdl_sc_channel_map)[171590].first = 1;
        (*_glb_hdl_sc_channel_map)[171590].second.push_front(p_2_axi_rlast);
        xsim_sc_channel<0, bool > *p_2_axi_rvalid = new xsim_sc_channel<0, bool >();
        sc_inst_2->axi_rvalid.bind(*p_2_axi_rvalid);
        (*_glb_hdl_sc_channel_map)[171592].first = 1;
        (*_glb_hdl_sc_channel_map)[171592].second.push_front(p_2_axi_rvalid);
        xsim_sc_channel<0, bool > *p_2_axi_rready = new xsim_sc_channel<0, bool >();
        sc_inst_2->axi_rready.bind(*p_2_axi_rready);
        (*_glb_hdl_sc_channel_map)[171591].first = 1;
        (*_glb_hdl_sc_channel_map)[171591].second.push_front(p_2_axi_rready);
        xsim_sc_channel<0, bool > *p_2_axi_aclk = new xsim_sc_channel<0, bool >();
        sc_inst_2->axi_aclk.bind(*p_2_axi_aclk);
        (*_glb_hdl_sc_channel_map)[171574].first = 1;
        (*_glb_hdl_sc_channel_map)[171574].second.push_front(p_2_axi_aclk);
        xsim_sc_channel<0, bool > *p_2_axi_aresetn = new xsim_sc_channel<0, bool >();
        sc_inst_2->axi_aresetn.bind(*p_2_axi_aresetn);
        (*_glb_hdl_sc_channel_map)[171577].first = 1;
        (*_glb_hdl_sc_channel_map)[171577].second.push_front(p_2_axi_aresetn);
        emu_sim_axi_perf_mon_2_0 *sc_inst_3 = new emu_sim_axi_perf_mon_2_0(".emu_wrapper.emu_i.sim_axi_perf_mon_2");
        sc_inst_3->xsim_set_dbg_index(30);
        xsim_sc_channel<36, sc_dt::sc_bv<36> > *p_3_axi_awaddr = new xsim_sc_channel<36, sc_dt::sc_bv<36> >();
        sc_inst_3->axi_awaddr.bind(*p_3_axi_awaddr);
        (*_glb_hdl_sc_channel_map)[171604].first = 3;
        (*_glb_hdl_sc_channel_map)[171604].second.push_front(p_3_axi_awaddr);
        xsim_sc_channel<8, sc_dt::sc_bv<8> > *p_3_axi_awlen = new xsim_sc_channel<8, sc_dt::sc_bv<8> >();
        sc_inst_3->axi_awlen.bind(*p_3_axi_awlen);
        (*_glb_hdl_sc_channel_map)[171606].first = 3;
        (*_glb_hdl_sc_channel_map)[171606].second.push_front(p_3_axi_awlen);
        xsim_sc_channel<3, sc_dt::sc_bv<3> > *p_3_axi_awsize = new xsim_sc_channel<3, sc_dt::sc_bv<3> >();
        sc_inst_3->axi_awsize.bind(*p_3_axi_awsize);
        (*_glb_hdl_sc_channel_map)[171608].first = 3;
        (*_glb_hdl_sc_channel_map)[171608].second.push_front(p_3_axi_awsize);
        xsim_sc_channel<2, sc_dt::sc_bv<2> > *p_3_axi_awburst = new xsim_sc_channel<2, sc_dt::sc_bv<2> >();
        sc_inst_3->axi_awburst.bind(*p_3_axi_awburst);
        (*_glb_hdl_sc_channel_map)[171605].first = 3;
        (*_glb_hdl_sc_channel_map)[171605].second.push_front(p_3_axi_awburst);
        xsim_sc_channel<0, bool > *p_3_axi_awvalid = new xsim_sc_channel<0, bool >();
        sc_inst_3->axi_awvalid.bind(*p_3_axi_awvalid);
        (*_glb_hdl_sc_channel_map)[171609].first = 1;
        (*_glb_hdl_sc_channel_map)[171609].second.push_front(p_3_axi_awvalid);
        xsim_sc_channel<0, bool > *p_3_axi_awready = new xsim_sc_channel<0, bool >();
        sc_inst_3->axi_awready.bind(*p_3_axi_awready);
        (*_glb_hdl_sc_channel_map)[171607].first = 1;
        (*_glb_hdl_sc_channel_map)[171607].second.push_front(p_3_axi_awready);
        xsim_sc_channel<0, bool > *p_3_axi_wlast = new xsim_sc_channel<0, bool >();
        sc_inst_3->axi_wlast.bind(*p_3_axi_wlast);
        (*_glb_hdl_sc_channel_map)[171615].first = 1;
        (*_glb_hdl_sc_channel_map)[171615].second.push_front(p_3_axi_wlast);
        xsim_sc_channel<0, bool > *p_3_axi_wvalid = new xsim_sc_channel<0, bool >();
        sc_inst_3->axi_wvalid.bind(*p_3_axi_wvalid);
        (*_glb_hdl_sc_channel_map)[171617].first = 1;
        (*_glb_hdl_sc_channel_map)[171617].second.push_front(p_3_axi_wvalid);
        xsim_sc_channel<0, bool > *p_3_axi_wready = new xsim_sc_channel<0, bool >();
        sc_inst_3->axi_wready.bind(*p_3_axi_wready);
        (*_glb_hdl_sc_channel_map)[171616].first = 1;
        (*_glb_hdl_sc_channel_map)[171616].second.push_front(p_3_axi_wready);
        xsim_sc_channel<0, bool > *p_3_axi_bvalid = new xsim_sc_channel<0, bool >();
        sc_inst_3->axi_bvalid.bind(*p_3_axi_bvalid);
        (*_glb_hdl_sc_channel_map)[171611].first = 1;
        (*_glb_hdl_sc_channel_map)[171611].second.push_front(p_3_axi_bvalid);
        xsim_sc_channel<0, bool > *p_3_axi_bready = new xsim_sc_channel<0, bool >();
        sc_inst_3->axi_bready.bind(*p_3_axi_bready);
        (*_glb_hdl_sc_channel_map)[171610].first = 1;
        (*_glb_hdl_sc_channel_map)[171610].second.push_front(p_3_axi_bready);
        xsim_sc_channel<36, sc_dt::sc_bv<36> > *p_3_axi_araddr = new xsim_sc_channel<36, sc_dt::sc_bv<36> >();
        sc_inst_3->axi_araddr.bind(*p_3_axi_araddr);
        (*_glb_hdl_sc_channel_map)[171597].first = 3;
        (*_glb_hdl_sc_channel_map)[171597].second.push_front(p_3_axi_araddr);
        xsim_sc_channel<8, sc_dt::sc_bv<8> > *p_3_axi_arlen = new xsim_sc_channel<8, sc_dt::sc_bv<8> >();
        sc_inst_3->axi_arlen.bind(*p_3_axi_arlen);
        (*_glb_hdl_sc_channel_map)[171600].first = 3;
        (*_glb_hdl_sc_channel_map)[171600].second.push_front(p_3_axi_arlen);
        xsim_sc_channel<3, sc_dt::sc_bv<3> > *p_3_axi_arsize = new xsim_sc_channel<3, sc_dt::sc_bv<3> >();
        sc_inst_3->axi_arsize.bind(*p_3_axi_arsize);
        (*_glb_hdl_sc_channel_map)[171602].first = 3;
        (*_glb_hdl_sc_channel_map)[171602].second.push_front(p_3_axi_arsize);
        xsim_sc_channel<2, sc_dt::sc_bv<2> > *p_3_axi_arburst = new xsim_sc_channel<2, sc_dt::sc_bv<2> >();
        sc_inst_3->axi_arburst.bind(*p_3_axi_arburst);
        (*_glb_hdl_sc_channel_map)[171598].first = 3;
        (*_glb_hdl_sc_channel_map)[171598].second.push_front(p_3_axi_arburst);
        xsim_sc_channel<0, bool > *p_3_axi_arvalid = new xsim_sc_channel<0, bool >();
        sc_inst_3->axi_arvalid.bind(*p_3_axi_arvalid);
        (*_glb_hdl_sc_channel_map)[171603].first = 1;
        (*_glb_hdl_sc_channel_map)[171603].second.push_front(p_3_axi_arvalid);
        xsim_sc_channel<0, bool > *p_3_axi_arready = new xsim_sc_channel<0, bool >();
        sc_inst_3->axi_arready.bind(*p_3_axi_arready);
        (*_glb_hdl_sc_channel_map)[171601].first = 1;
        (*_glb_hdl_sc_channel_map)[171601].second.push_front(p_3_axi_arready);
        xsim_sc_channel<0, bool > *p_3_axi_rlast = new xsim_sc_channel<0, bool >();
        sc_inst_3->axi_rlast.bind(*p_3_axi_rlast);
        (*_glb_hdl_sc_channel_map)[171612].first = 1;
        (*_glb_hdl_sc_channel_map)[171612].second.push_front(p_3_axi_rlast);
        xsim_sc_channel<0, bool > *p_3_axi_rvalid = new xsim_sc_channel<0, bool >();
        sc_inst_3->axi_rvalid.bind(*p_3_axi_rvalid);
        (*_glb_hdl_sc_channel_map)[171614].first = 1;
        (*_glb_hdl_sc_channel_map)[171614].second.push_front(p_3_axi_rvalid);
        xsim_sc_channel<0, bool > *p_3_axi_rready = new xsim_sc_channel<0, bool >();
        sc_inst_3->axi_rready.bind(*p_3_axi_rready);
        (*_glb_hdl_sc_channel_map)[171613].first = 1;
        (*_glb_hdl_sc_channel_map)[171613].second.push_front(p_3_axi_rready);
        xsim_sc_channel<0, bool > *p_3_axi_aclk = new xsim_sc_channel<0, bool >();
        sc_inst_3->axi_aclk.bind(*p_3_axi_aclk);
        (*_glb_hdl_sc_channel_map)[171596].first = 1;
        (*_glb_hdl_sc_channel_map)[171596].second.push_front(p_3_axi_aclk);
        xsim_sc_channel<0, bool > *p_3_axi_aresetn = new xsim_sc_channel<0, bool >();
        sc_inst_3->axi_aresetn.bind(*p_3_axi_aresetn);
        (*_glb_hdl_sc_channel_map)[171599].first = 1;
        (*_glb_hdl_sc_channel_map)[171599].second.push_front(p_3_axi_aresetn);
        emu_sim_axi_perf_mon_3_0 *sc_inst_4 = new emu_sim_axi_perf_mon_3_0(".emu_wrapper.emu_i.sim_axi_perf_mon_3");
        sc_inst_4->xsim_set_dbg_index(31);
        xsim_sc_channel<36, sc_dt::sc_bv<36> > *p_4_axi_awaddr = new xsim_sc_channel<36, sc_dt::sc_bv<36> >();
        sc_inst_4->axi_awaddr.bind(*p_4_axi_awaddr);
        (*_glb_hdl_sc_channel_map)[171626].first = 3;
        (*_glb_hdl_sc_channel_map)[171626].second.push_front(p_4_axi_awaddr);
        xsim_sc_channel<8, sc_dt::sc_bv<8> > *p_4_axi_awlen = new xsim_sc_channel<8, sc_dt::sc_bv<8> >();
        sc_inst_4->axi_awlen.bind(*p_4_axi_awlen);
        (*_glb_hdl_sc_channel_map)[171628].first = 3;
        (*_glb_hdl_sc_channel_map)[171628].second.push_front(p_4_axi_awlen);
        xsim_sc_channel<3, sc_dt::sc_bv<3> > *p_4_axi_awsize = new xsim_sc_channel<3, sc_dt::sc_bv<3> >();
        sc_inst_4->axi_awsize.bind(*p_4_axi_awsize);
        (*_glb_hdl_sc_channel_map)[171630].first = 3;
        (*_glb_hdl_sc_channel_map)[171630].second.push_front(p_4_axi_awsize);
        xsim_sc_channel<2, sc_dt::sc_bv<2> > *p_4_axi_awburst = new xsim_sc_channel<2, sc_dt::sc_bv<2> >();
        sc_inst_4->axi_awburst.bind(*p_4_axi_awburst);
        (*_glb_hdl_sc_channel_map)[171627].first = 3;
        (*_glb_hdl_sc_channel_map)[171627].second.push_front(p_4_axi_awburst);
        xsim_sc_channel<0, bool > *p_4_axi_awvalid = new xsim_sc_channel<0, bool >();
        sc_inst_4->axi_awvalid.bind(*p_4_axi_awvalid);
        (*_glb_hdl_sc_channel_map)[171631].first = 1;
        (*_glb_hdl_sc_channel_map)[171631].second.push_front(p_4_axi_awvalid);
        xsim_sc_channel<0, bool > *p_4_axi_awready = new xsim_sc_channel<0, bool >();
        sc_inst_4->axi_awready.bind(*p_4_axi_awready);
        (*_glb_hdl_sc_channel_map)[171629].first = 1;
        (*_glb_hdl_sc_channel_map)[171629].second.push_front(p_4_axi_awready);
        xsim_sc_channel<0, bool > *p_4_axi_wlast = new xsim_sc_channel<0, bool >();
        sc_inst_4->axi_wlast.bind(*p_4_axi_wlast);
        (*_glb_hdl_sc_channel_map)[171637].first = 1;
        (*_glb_hdl_sc_channel_map)[171637].second.push_front(p_4_axi_wlast);
        xsim_sc_channel<0, bool > *p_4_axi_wvalid = new xsim_sc_channel<0, bool >();
        sc_inst_4->axi_wvalid.bind(*p_4_axi_wvalid);
        (*_glb_hdl_sc_channel_map)[171639].first = 1;
        (*_glb_hdl_sc_channel_map)[171639].second.push_front(p_4_axi_wvalid);
        xsim_sc_channel<0, bool > *p_4_axi_wready = new xsim_sc_channel<0, bool >();
        sc_inst_4->axi_wready.bind(*p_4_axi_wready);
        (*_glb_hdl_sc_channel_map)[171638].first = 1;
        (*_glb_hdl_sc_channel_map)[171638].second.push_front(p_4_axi_wready);
        xsim_sc_channel<0, bool > *p_4_axi_bvalid = new xsim_sc_channel<0, bool >();
        sc_inst_4->axi_bvalid.bind(*p_4_axi_bvalid);
        (*_glb_hdl_sc_channel_map)[171633].first = 1;
        (*_glb_hdl_sc_channel_map)[171633].second.push_front(p_4_axi_bvalid);
        xsim_sc_channel<0, bool > *p_4_axi_bready = new xsim_sc_channel<0, bool >();
        sc_inst_4->axi_bready.bind(*p_4_axi_bready);
        (*_glb_hdl_sc_channel_map)[171632].first = 1;
        (*_glb_hdl_sc_channel_map)[171632].second.push_front(p_4_axi_bready);
        xsim_sc_channel<36, sc_dt::sc_bv<36> > *p_4_axi_araddr = new xsim_sc_channel<36, sc_dt::sc_bv<36> >();
        sc_inst_4->axi_araddr.bind(*p_4_axi_araddr);
        (*_glb_hdl_sc_channel_map)[171619].first = 3;
        (*_glb_hdl_sc_channel_map)[171619].second.push_front(p_4_axi_araddr);
        xsim_sc_channel<8, sc_dt::sc_bv<8> > *p_4_axi_arlen = new xsim_sc_channel<8, sc_dt::sc_bv<8> >();
        sc_inst_4->axi_arlen.bind(*p_4_axi_arlen);
        (*_glb_hdl_sc_channel_map)[171622].first = 3;
        (*_glb_hdl_sc_channel_map)[171622].second.push_front(p_4_axi_arlen);
        xsim_sc_channel<3, sc_dt::sc_bv<3> > *p_4_axi_arsize = new xsim_sc_channel<3, sc_dt::sc_bv<3> >();
        sc_inst_4->axi_arsize.bind(*p_4_axi_arsize);
        (*_glb_hdl_sc_channel_map)[171624].first = 3;
        (*_glb_hdl_sc_channel_map)[171624].second.push_front(p_4_axi_arsize);
        xsim_sc_channel<2, sc_dt::sc_bv<2> > *p_4_axi_arburst = new xsim_sc_channel<2, sc_dt::sc_bv<2> >();
        sc_inst_4->axi_arburst.bind(*p_4_axi_arburst);
        (*_glb_hdl_sc_channel_map)[171620].first = 3;
        (*_glb_hdl_sc_channel_map)[171620].second.push_front(p_4_axi_arburst);
        xsim_sc_channel<0, bool > *p_4_axi_arvalid = new xsim_sc_channel<0, bool >();
        sc_inst_4->axi_arvalid.bind(*p_4_axi_arvalid);
        (*_glb_hdl_sc_channel_map)[171625].first = 1;
        (*_glb_hdl_sc_channel_map)[171625].second.push_front(p_4_axi_arvalid);
        xsim_sc_channel<0, bool > *p_4_axi_arready = new xsim_sc_channel<0, bool >();
        sc_inst_4->axi_arready.bind(*p_4_axi_arready);
        (*_glb_hdl_sc_channel_map)[171623].first = 1;
        (*_glb_hdl_sc_channel_map)[171623].second.push_front(p_4_axi_arready);
        xsim_sc_channel<0, bool > *p_4_axi_rlast = new xsim_sc_channel<0, bool >();
        sc_inst_4->axi_rlast.bind(*p_4_axi_rlast);
        (*_glb_hdl_sc_channel_map)[171634].first = 1;
        (*_glb_hdl_sc_channel_map)[171634].second.push_front(p_4_axi_rlast);
        xsim_sc_channel<0, bool > *p_4_axi_rvalid = new xsim_sc_channel<0, bool >();
        sc_inst_4->axi_rvalid.bind(*p_4_axi_rvalid);
        (*_glb_hdl_sc_channel_map)[171636].first = 1;
        (*_glb_hdl_sc_channel_map)[171636].second.push_front(p_4_axi_rvalid);
        xsim_sc_channel<0, bool > *p_4_axi_rready = new xsim_sc_channel<0, bool >();
        sc_inst_4->axi_rready.bind(*p_4_axi_rready);
        (*_glb_hdl_sc_channel_map)[171635].first = 1;
        (*_glb_hdl_sc_channel_map)[171635].second.push_front(p_4_axi_rready);
        xsim_sc_channel<0, bool > *p_4_axi_aclk = new xsim_sc_channel<0, bool >();
        sc_inst_4->axi_aclk.bind(*p_4_axi_aclk);
        (*_glb_hdl_sc_channel_map)[171618].first = 1;
        (*_glb_hdl_sc_channel_map)[171618].second.push_front(p_4_axi_aclk);
        xsim_sc_channel<0, bool > *p_4_axi_aresetn = new xsim_sc_channel<0, bool >();
        sc_inst_4->axi_aresetn.bind(*p_4_axi_aresetn);
        (*_glb_hdl_sc_channel_map)[171621].first = 1;
        (*_glb_hdl_sc_channel_map)[171621].second.push_front(p_4_axi_aresetn);
    }
