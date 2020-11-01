#include "kerneldl_kerneldl.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void kerneldl_kerneldl::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst_n\" :  \"" << ap_rst_n.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"m_axi_gmemm_AWVALID\" :  \"" << m_axi_gmemm_AWVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_gmemm_AWREADY\" :  \"" << m_axi_gmemm_AWREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_gmemm_AWADDR\" :  \"" << m_axi_gmemm_AWADDR.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_gmemm_AWID\" :  \"" << m_axi_gmemm_AWID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_gmemm_AWLEN\" :  \"" << m_axi_gmemm_AWLEN.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_gmemm_AWSIZE\" :  \"" << m_axi_gmemm_AWSIZE.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_gmemm_AWBURST\" :  \"" << m_axi_gmemm_AWBURST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_gmemm_AWLOCK\" :  \"" << m_axi_gmemm_AWLOCK.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_gmemm_AWCACHE\" :  \"" << m_axi_gmemm_AWCACHE.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_gmemm_AWPROT\" :  \"" << m_axi_gmemm_AWPROT.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_gmemm_AWQOS\" :  \"" << m_axi_gmemm_AWQOS.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_gmemm_AWREGION\" :  \"" << m_axi_gmemm_AWREGION.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_gmemm_AWUSER\" :  \"" << m_axi_gmemm_AWUSER.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_gmemm_WVALID\" :  \"" << m_axi_gmemm_WVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_gmemm_WREADY\" :  \"" << m_axi_gmemm_WREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_gmemm_WDATA\" :  \"" << m_axi_gmemm_WDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_gmemm_WSTRB\" :  \"" << m_axi_gmemm_WSTRB.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_gmemm_WLAST\" :  \"" << m_axi_gmemm_WLAST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_gmemm_WID\" :  \"" << m_axi_gmemm_WID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_gmemm_WUSER\" :  \"" << m_axi_gmemm_WUSER.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_gmemm_ARVALID\" :  \"" << m_axi_gmemm_ARVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_gmemm_ARREADY\" :  \"" << m_axi_gmemm_ARREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_gmemm_ARADDR\" :  \"" << m_axi_gmemm_ARADDR.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_gmemm_ARID\" :  \"" << m_axi_gmemm_ARID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_gmemm_ARLEN\" :  \"" << m_axi_gmemm_ARLEN.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_gmemm_ARSIZE\" :  \"" << m_axi_gmemm_ARSIZE.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_gmemm_ARBURST\" :  \"" << m_axi_gmemm_ARBURST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_gmemm_ARLOCK\" :  \"" << m_axi_gmemm_ARLOCK.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_gmemm_ARCACHE\" :  \"" << m_axi_gmemm_ARCACHE.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_gmemm_ARPROT\" :  \"" << m_axi_gmemm_ARPROT.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_gmemm_ARQOS\" :  \"" << m_axi_gmemm_ARQOS.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_gmemm_ARREGION\" :  \"" << m_axi_gmemm_ARREGION.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_gmemm_ARUSER\" :  \"" << m_axi_gmemm_ARUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_gmemm_RVALID\" :  \"" << m_axi_gmemm_RVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_gmemm_RREADY\" :  \"" << m_axi_gmemm_RREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_gmemm_RDATA\" :  \"" << m_axi_gmemm_RDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_gmemm_RLAST\" :  \"" << m_axi_gmemm_RLAST.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_gmemm_RID\" :  \"" << m_axi_gmemm_RID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_gmemm_RUSER\" :  \"" << m_axi_gmemm_RUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_gmemm_RRESP\" :  \"" << m_axi_gmemm_RRESP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_gmemm_BVALID\" :  \"" << m_axi_gmemm_BVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"m_axi_gmemm_BREADY\" :  \"" << m_axi_gmemm_BREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_gmemm_BRESP\" :  \"" << m_axi_gmemm_BRESP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_gmemm_BID\" :  \"" << m_axi_gmemm_BID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"m_axi_gmemm_BUSER\" :  \"" << m_axi_gmemm_BUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_control_AWVALID\" :  \"" << s_axi_control_AWVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_control_AWREADY\" :  \"" << s_axi_control_AWREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_control_AWADDR\" :  \"" << s_axi_control_AWADDR.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_control_WVALID\" :  \"" << s_axi_control_WVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_control_WREADY\" :  \"" << s_axi_control_WREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_control_WDATA\" :  \"" << s_axi_control_WDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_control_WSTRB\" :  \"" << s_axi_control_WSTRB.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_control_ARVALID\" :  \"" << s_axi_control_ARVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_control_ARREADY\" :  \"" << s_axi_control_ARREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_control_ARADDR\" :  \"" << s_axi_control_ARADDR.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_control_RVALID\" :  \"" << s_axi_control_RVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_control_RREADY\" :  \"" << s_axi_control_RREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_control_RDATA\" :  \"" << s_axi_control_RDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_control_RRESP\" :  \"" << s_axi_control_RRESP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_control_BVALID\" :  \"" << s_axi_control_BVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_control_BREADY\" :  \"" << s_axi_control_BREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_control_BRESP\" :  \"" << s_axi_control_BRESP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"interrupt\" :  \"" << interrupt.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

