`timescale 1ns/1ns

module testbench();

reg clk50mhz;
reg sys_rst_n;

wire [3:0] led;
wire       uart_rxd_out;
wire       uart_txd_in = 1'b0;

initial
begin
    clk50mhz  = 1'b0;
    sys_rst_n <= 1'b0;
    #500;
    sys_rst_n <= 1'b1;
end

always #10 clk50mhz = ~clk50mhz;

top top
(
    .clk50mhz     (clk50mhz),
    .sys_rst_n    (sys_rst_n),
    .led          (led),
    .uart_rxd_out (uart_rxd_out),
    .uart_txd_in  (uart_txd_in),

    .ddr3_reset_n (),
    .ddr3_cke     (),
    .ddr3_ck_p    (), 
    .ddr3_ck_n    (),
    .ddr3_cs_n    (),
    .ddr3_ras_n   (), 
    .ddr3_cas_n   (), 
    .ddr3_we_n    (),
    .ddr3_ba      (),
    .ddr3_addr    (),
    .ddr3_odt     (),
    .ddr3_dm      (),
    .ddr3_dqs_p   (),
    .ddr3_dqs_n   (),
    .ddr3_dq      ()  
);

endmodule
