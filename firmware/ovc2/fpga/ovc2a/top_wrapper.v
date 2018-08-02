module top_wrapper(
  input pcie_refclk,
  input pcie_perst,
  input [3:0] pcie_rx,
  output [3:0] pcie_tx,
  output [1:0] aux,
  input clk100,
  output led_ci,
  output led_di,

  output [1:0] cam_clk,
  input [1:0] cam_dclk,
  input [1:0] cam_sync,
  input [7:0] cam_dout,
  output [1:0] cam_rst,
  output [1:0] cam_cs,
  output [1:0] cam_sck,
  output [1:0] cam_mosi,
  input [1:0] cam_miso,
  output [1:0] cam_trigger,

  output imu_rst,
  output imu_cs,
  output imu_sck,
  output imu_mosi,
  input imu_miso,
  output imu_sync_in,
  input imu_sync_out
);

assign imu_sync_in = imu_sync_out; //1'b0;

wire pcie_npor = pcie_perst;
wire [31:0] qsys_pio_output;
wire [31:0] qsys_pio_input;
wire pcie_clk_125;
//wire qsys_pio_clk_en = qsys_pio_output[0];

assign cam_rst = {2{~qsys_pio_output[29]}};
assign imu_rst = ~qsys_pio_output[27];

//assign aux[1] = qsys_pio_output[1];

/*
assign aux[0] = cam_cs[0];
assign aux[1] = cam_sck[0];
assign aux[2] = cam_miso[0];
assign aux[3] = cam_mosi[0];
assign aux[7:4] = 4'h0;
*/

//assign aux[7:0] = 8'h0;

//assign aux = { 3'h0, imu_sync_out, imu_cs, imu_sck, imu_mosi, imu_miso };
/*
assign aux = { 2'h0,
               imu_cs, imu_sck, imu_mosi, imu_miso,
               imu_sync_out, cam_trigger[0] };
*/
//assign aux = 8'h0;
/*
assign aux = { cam_miso[1], cam_mosi[1], cam_sck[1], cam_cs[1],
               cam_miso[0], cam_mosi[0], cam_sck[0], cam_cs[0] };
*/

assign cam_trigger[1] = cam_trigger[0];
assign led_ci = 1'b1;
assign led_di = 1'b1;

/*
wire [127:0] qsys_dma_data;
wire qsys_dma_valid;
wire qsys_dma_ready;
wire qsys_dma_sop, qsys_dma_eop;
*/

wire [127:0] txs_writedata;
wire txs_write;
wire [5:0] txs_burstcount;
wire txs_waitrequest;
wire [22:0] txs_address;
wire [1:0] qsys_irq;

wire [7:0] imu_ram_addr;
wire imu_ram_wr;
wire [31:0] imu_ram_d;
wire [31:0] imu_ram_q;

/*
wire imu_cs_qsys, imu_mosi_qsys, imu_sck_qsys;
wire imu_cs_auto, imu_mosi_auto, imu_sck_auto;

wire imu_busy, imu_busy_d1;
d1 imu_busy_d1_r(.c(c), .d(imu_busy), .q(imu_busy_d1));

wire imu_sel = qsys_pio_output[4] | imu_busy_d1;
wire imu_own = imu_sel;  // imu_own is asserted when top module has control

*/

/*
wire c = pcie_clk_125;  // general clock for everything
d1 cs_r(.c(c), .d(imu_sel ? imu_cs_auto : imu_cs_qsys), .q(imu_cs));
d1 sck_r(.c(c), .d(imu_sel ? imu_sck_auto : imu_sck_qsys), .q(imu_sck));
d1 mosi_r(.c(c), .d(imu_sel ? imu_mosi_auto : imu_mosi_qsys), .q(imu_mosi));

wire [1:0] cam_cs_qsys;
wire [1:0] cam_mosi_qsys;
wire [1:0] cam_sck_qsys;

d1 #(2) cam_cs_d1_r(.c(c), .d(cam_cs_qsys), .q(cam_cs));
d1 #(2) cam_sck_d1_r(.c(c), .d(cam_sck_qsys), .q(cam_sck));
d1 #(2) cam_mosi_d1_r(.c(c), .d(cam_mosi_qsys), .q(cam_mosi));
*/

wire [7:0] reg_ram_addr;
wire reg_ram_wr;
wire [31:0] reg_ram_d;
wire [31:0] reg_ram_q;

platform qsys_inst(
 .clk_clk(pcie_refclk),
 .pcie_clock_bridge_out_clk_clk(pcie_clk_125),
 .pcie_hip_serial_rx_in0(pcie_rx[0]),
 .pcie_hip_serial_rx_in1(pcie_rx[1]),
 .pcie_hip_serial_rx_in2(pcie_rx[2]),
 .pcie_hip_serial_rx_in3(pcie_rx[3]),
 .pcie_hip_serial_tx_out0(pcie_tx[0]),
 .pcie_hip_serial_tx_out1(pcie_tx[1]),
 .pcie_hip_serial_tx_out2(pcie_tx[2]),
 .pcie_hip_serial_tx_out3(pcie_tx[3]),
 .pcie_hip_ctrl_test_in(32'ha8),
 .pcie_hip_ctrl_simu_mode_pipe(1'b0),
 //.irq_irq(qsys_irq),
 .pcie_npor_npor(pcie_npor),
 .pcie_npor_pin_perst(pcie_perst),

 .pio_output_external_connection_export(qsys_pio_output),
 .pio_input_external_connection_export(qsys_pio_input),

 .pcie_txs_byteenable(16'hffff),
 .pcie_txs_chipselect(1'b1),
 .pcie_txs_readdata(),
 .pcie_txs_writedata(txs_writedata),
 .pcie_txs_read(1'b0),
 .pcie_txs_write(txs_write),
 .pcie_txs_burstcount(txs_burstcount),
 .pcie_txs_readdatavalid(),
 .pcie_txs_waitrequest(txs_waitrequest),
 .pcie_txs_address(txs_address),
 
 .imu_ram_s2_chipselect(1'b1),
 .imu_ram_s2_clken(1'b1),
 .imu_ram_s2_byteenable(4'hf),
 .imu_ram_s2_address(imu_ram_addr),
 .imu_ram_s2_write(imu_ram_wr),
 .imu_ram_s2_readdata(imu_ram_q),
 .imu_ram_s2_writedata(imu_ram_d),

 .reg_ram_s2_chipselect(1'b1),
 .reg_ram_s2_clken(1'b1),
 .reg_ram_s2_byteenable(4'hf),
 .reg_ram_s2_address(reg_ram_addr),
 .reg_ram_s2_write(reg_ram_wr),
 .reg_ram_s2_readdata(reg_ram_q),
 .reg_ram_s2_writedata(reg_ram_d)
);

wire [1:0] cam_rxc, cam_dclk_pll_locked;
wire [39:0] cam_0_rxd, cam_1_rxd;
wire [4:0] cam_0_bitslip, cam_1_bitslip;
wire cam_dclk_pll_reset;

r cam_dclk_pll_reset_r
(.c(pcie_clk_125), .rst(1'b0), .en(1'b1),
 .d(qsys_pio_output[31]), .q(cam_dclk_pll_reset));

cam_lvds_rx cam_lvds_rx_0
(.inclock(cam_dclk[0]),
 .pll_areset(cam_dclk_pll_reset),
 .pll_locked(cam_dclk_pll_locked[0]),
 .rx_in({cam_sync[0], cam_dout[3:0]}),
 .rx_bitslip_ctrl(cam_0_bitslip),
 .rx_coreclock(cam_rxc[0]),
 .rx_out(cam_0_rxd));

cam_lvds_rx cam_lvds_rx_1
(.inclock(cam_dclk[1]),
 .pll_areset(cam_dclk_pll_reset),
 .pll_locked(cam_dclk_pll_locked[1]),
 .rx_in({cam_sync[1], cam_dout[7:4]}),
 .rx_bitslip_ctrl(cam_1_bitslip),
 .rx_coreclock(cam_rxc[1]),
 .rx_out(cam_1_rxd));

wire cam_clk_pll_locked;
wire cam_clk_pll_out;
cam_pll cam_clk_pll  // outbound clock FPGA -> imagers
(.pll_refclk0(pcie_clk_125),
 .pll_locked(cam_clk_pll_locked),
 .pll_powerdown(qsys_pio_output[30]),
 .outclk0(cam_clk_pll_out));

// synchronize output-enable PIO from PCIe domain to cam_clk domain
s cam_clk_gpio_oe_s
(.c(cam_clk_pll_out), .d(qsys_pio_output[28]), .q(cam_clk_gpio_oe));

// todo: look at instantiating cyclone10gx_ddio_out directly, rather than this
ovc2_gpio cam_clk_0_gpio
(.ck(cam_clk_pll_out),
 .din(2'h1),
 .oe(cam_clk_gpio_oe),
 .pad_out(cam_clk[0]));

ovc2_gpio cam_clk_1_gpio
(.ck(cam_clk_pll_out),
 .din(2'h1),
 .oe(cam_clk_gpio_oe),
 .pad_out(cam_clk[1]));

//assign aux[0] = |cam_0_rxd | |cam_1_rxd;

/*
wire [127:0] txs_writedata; // = 128'h0123_4567_89ab_cdef;
wire txs_write;
wire [5:0] txs_burstcount;  // = 6'h1;
wire txs_waitrequest;
wire [26:0] txs_address;  // = 27'h0;
*/

top top_inst(
  .clk125(pcie_clk_125),
  .aux(aux),

  .cam_trigger(cam_trigger[0]),
  .pio_output(qsys_pio_output[31:8]),
  .pio_input(qsys_pio_input),
  .txs_waitrequest(txs_waitrequest),
  .txs_write(txs_write),
  .txs_writedata(txs_writedata),
  .txs_burstcount(txs_burstcount),
  .txs_address(txs_address),
  .irq(qsys_irq),

  .cam_0_rxc(cam_rxc[0]),
  .cam_0_rxd(~cam_0_rxd),  // all lanes inverted on PCB for nicer routing
  .cam_0_rxd_align(cam_0_bitslip),
  .cam_0_rx_locked(cam_dclk_pll_locked[0]),

  .cam_1_rxc(cam_rxc[1]),
  .cam_1_rxd({~cam_1_rxd[39:32],    // sync lane is inverted
               cam_1_rxd[31:24],    // lane 3 is not inverted
               cam_1_rxd[23:16],    // lane 2 is not inverted
              ~cam_1_rxd[15: 8],    // lane 1 is inverted
              ~cam_1_rxd[ 7: 0]}),  // lane 0 is inverted
  .cam_1_rxd_align(cam_1_bitslip),
  .cam_1_rx_locked(cam_dclk_pll_locked[1]),

  .cam_cs(cam_cs),
  .cam_sck(cam_sck),
  .cam_mosi(cam_mosi),
  .cam_miso(cam_miso),

  .reg_ram_addr(reg_ram_addr),
  .reg_ram_wr(reg_ram_wr),
  .reg_ram_d(reg_ram_d),
  .reg_ram_q(reg_ram_q),

  .imu_cs(imu_cs),
  .imu_sck(imu_sck),
  .imu_mosi(imu_mosi),
  .imu_miso(imu_miso),
  .imu_sync(imu_sync_out),

  .imu_ram_addr(imu_ram_addr),
  .imu_ram_wr(imu_ram_wr),
  .imu_ram_d(imu_ram_d),
  .imu_ram_q(imu_ram_q)
);

/*
assign led[0] = qsys_pio_output[1];
assign led[1] = cam_0_rx_locked & cam_1_rx_locked;
*/

endmodule
