## This file is a general .xdc for the ARTY Rev. B
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

## SPI Configurate Setting

set_property BITSTREAM.GENERAL.COMPRESS true [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE Yes [current_design]

## Clock signal

set_property -dict {PACKAGE_PIN W19 IOSTANDARD LVCMOS33} [get_ports clk50mhz]
create_clock -period 20.000 -name sys_clk_pin -waveform {0.000 10.000} -add [get_ports clk50mhz]

## Reset

set_property -dict {PACKAGE_PIN Y19 IOSTANDARD LVCMOS33} [get_ports sys_rst_n]

##Switches

#set_property -dict { PACKAGE_PIN A8    IOSTANDARD LVCMOS33 } [get_ports { sw[0] }]; #IO_L12N_T1_MRCC_16 Sch=sw[0]
#set_property -dict { PACKAGE_PIN C11   IOSTANDARD LVCMOS33 } [get_ports { sw[1] }]; #IO_L13P_T2_MRCC_16 Sch=sw[1]
#set_property -dict { PACKAGE_PIN C10   IOSTANDARD LVCMOS33 } [get_ports { sw[2] }]; #IO_L13N_T2_MRCC_16 Sch=sw[2]
#set_property -dict { PACKAGE_PIN A10   IOSTANDARD LVCMOS33 } [get_ports { sw[3] }]; #IO_L14P_T2_SRCC_16 Sch=sw[3]

##7-segment LEDs

#set_property -dict { PACKAGE_PIN K18   IOSTANDARD LVCMOS33 } [get_ports { dig1 }];
#set_property -dict { PACKAGE_PIN K16   IOSTANDARD LVCMOS33 } [get_ports { dig2 }];
#set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { dig3 }];
#set_property -dict { PACKAGE_PIN G20   IOSTANDARD LVCMOS33 } [get_ports { dig4 }];
#set_property -dict { PACKAGE_PIN H20   IOSTANDARD LVCMOS33 } [get_ports { dig5 }];
#set_property -dict { PACKAGE_PIN H18   IOSTANDARD LVCMOS33 } [get_ports { dig6 }];
#set_property -dict { PACKAGE_PIN U22   IOSTANDARD LVCMOS33 } [get_ports { ledsd_a }];
#set_property -dict { PACKAGE_PIN P19   IOSTANDARD LVCMOS33 } [get_ports { ledsd_b }];
#set_property -dict { PACKAGE_PIN W21   IOSTANDARD LVCMOS33 } [get_ports { ledsd_c }];
#set_property -dict { PACKAGE_PIN V22   IOSTANDARD LVCMOS33 } [get_ports { ledsd_d }];
#set_property -dict { PACKAGE_PIN AB20  IOSTANDARD LVCMOS33 } [get_ports { ledsd_e }];
#set_property -dict { PACKAGE_PIN W22   IOSTANDARD LVCMOS33 } [get_ports { ledsd_f }];
#set_property -dict { PACKAGE_PIN AA20  IOSTANDARD LVCMOS33 } [get_ports { ledsd_g }];
#set_property -dict { PACKAGE_PIN AA21  IOSTANDARD LVCMOS33 } [get_ports { ledsd_dp }];

##LEDs

set_property -dict {PACKAGE_PIN N20 IOSTANDARD LVCMOS33} [get_ports {led[0]}]
set_property -dict {PACKAGE_PIN M20 IOSTANDARD LVCMOS33} [get_ports {led[1]}]
set_property -dict {PACKAGE_PIN N22 IOSTANDARD LVCMOS33} [get_ports {led[2]}]
set_property -dict {PACKAGE_PIN M22 IOSTANDARD LVCMOS33} [get_ports {led[3]}]

##Buttons

#set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports { btn[0] }]; #IO_L6N_T0_VREF_16 Sch=btn[0]
#set_property -dict { PACKAGE_PIN W17   IOSTANDARD LVCMOS33 } [get_ports { btn[1] }]; #IO_L11P_T1_SRCC_16 Sch=btn[1]
#set_property -dict { PACKAGE_PIN AA18  IOSTANDARD LVCMOS33 } [get_ports { btn[2] }]; #IO_L11N_T1_SRCC_16 Sch=btn[2]
#set_property -dict { PACKAGE_PIN AB18  IOSTANDARD LVCMOS33 } [get_ports { btn[3] }]; #IO_L12P_T1_MRCC_16 Sch=btn[3]

##SD Card
#set_property -dict { PACKAGE_PIN Y22   IOSTANDARD LVCMOS33 } [get_ports { sd_clk }];
#set_property -dict { PACKAGE_PIN Y21   IOSTANDARD LVCMOS33 } [get_ports { sd_cmd }];
#set_property -dict { PACKAGE_PIN AA19  IOSTANDARD LVCMOS33 } [get_ports { sd_cd }];
#set_property -dict { PACKAGE_PIN AB21  IOSTANDARD LVCMOS33 } [get_ports { sd_d0 }];
#set_property -dict { PACKAGE_PIN AB22  IOSTANDARD LVCMOS33 } [get_ports { sd_d1 }];
#set_property -dict { PACKAGE_PIN AB20  IOSTANDARD LVCMOS33 } [get_ports { sd_d2 }];
#set_property -dict { PACKAGE_PIN W21   IOSTANDARD LVCMOS33 } [get_ports { sd_d3 }];

##USB-UART Interface

set_property -dict {PACKAGE_PIN P17 IOSTANDARD LVCMOS33} [get_ports uart_rxd_out]
set_property -dict {PACKAGE_PIN N17 IOSTANDARD LVCMOS33} [get_ports uart_txd_in]

##SMSC Ethernet PHY

#set_property -dict { PACKAGE_PIN A20   IOSTANDARD LVCMOS33 } [get_ports { eth_rxd[0] }];
#set_property -dict { PACKAGE_PIN B21   IOSTANDARD LVCMOS33 } [get_ports { eth_rxd[1] }];
#set_property -dict { PACKAGE_PIN A21   IOSTANDARD LVCMOS33 } [get_ports { eth_rxd[2] }];
#set_property -dict { PACKAGE_PIN E21   IOSTANDARD LVCMOS33 } [get_ports { eth_rxd[3] }];
#set_property -dict { PACKAGE_PIN C18   IOSTANDARD LVCMOS33 } [get_ports { eth_rx_clk }];
#set_property -dict { PACKAGE_PIN B20   IOSTANDARD LVCMOS33 } [get_ports { eth_rx_ctl }];
#set_property -dict { PACKAGE_PIN D21   IOSTANDARD LVCMOS33 } [get_ports { eth_txd[0] }];
#set_property -dict { PACKAGE_PIN G21   IOSTANDARD LVCMOS33 } [get_ports { eth_txd[1] }];
#set_property -dict { PACKAGE_PIN G22   IOSTANDARD LVCMOS33 } [get_ports { eth_txd[2] }];
#set_property -dict { PACKAGE_PIN G15   IOSTANDARD LVCMOS33 } [get_ports { eth_txd[3] }];
#set_property -dict { PACKAGE_PIN F20   IOSTANDARD LVCMOS33 } [get_ports { eth_tx_ctl }];
#set_property -dict { PACKAGE_PIN C19   IOSTANDARD LVCMOS33 } [get_ports { eth_tx_clk }];
#set_property -dict { PACKAGE_PIN J14   IOSTANDARD LVCMOS33 } [get_ports { eth_mdc }];
#set_property -dict { PACKAGE_PIN G16   IOSTANDARD LVCMOS33 } [get_ports { eth_mdio }];
#set_property -dict { PACKAGE_PIN F19   IOSTANDARD LVCMOS33 } [get_ports { eth_inib }];
#set_property -dict { PACKAGE_PIN H14   IOSTANDARD LVCMOS33 } [get_ports { eth_nrst }];

##LCD

#set_property -dict { PACKAGE_PIN AA19  IOSTANDARD LVCMOS33 } [get_ports { lcd_bl }];
#set_property -dict { PACKAGE_PIN V18   IOSTANDARD LVCMOS33 } [get_ports { ctp_rst }];
#set_property -dict { PACKAGE_PIN V19   IOSTANDARD LVCMOS33 } [get_ports { ctp_int }];
#set_property -dict { PACKAGE_PIN J22   IOSTANDARD LVCMOS33 } [get_ports { i2c_sda }];
#set_property -dict { PACKAGE_PIN K19   IOSTANDARD LVCMOS33 } [get_ports { i2c_scl }];
#set_property -dict { PACKAGE_PIN B18   IOSTANDARD LVCMOS33 } [get_ports { lcd_vs }];
#set_property -dict { PACKAGE_PIN E19   IOSTANDARD LVCMOS33 } [get_ports { lcd_hs }];
#set_property -dict { PACKAGE_PIN B17   IOSTANDARD LVCMOS33 } [get_ports { lcd_de }];
#set_property -dict { PACKAGE_PIN D19   IOSTANDARD LVCMOS33 } [get_ports { lcd_clk }];
#set_property -dict { PACKAGE_PIN J16   IOSTANDARD LVCMOS33 } [get_ports { lcd_r0 }];
#set_property -dict { PACKAGE_PIN H22   IOSTANDARD LVCMOS33 } [get_ports { lcd_r1 }];
#set_property -dict { PACKAGE_PIN J17   IOSTANDARD LVCMOS33 } [get_ports { lcd_r2 }];
#set_property -dict { PACKAGE_PIN K17   IOSTANDARD LVCMOS33 } [get_ports { lcd_r3 }];
#set_property -dict { PACKAGE_PIN K14   IOSTANDARD LVCMOS33 } [get_ports { lcd_r4 }];
#set_property -dict { PACKAGE_PIN K13   IOSTANDARD LVCMOS33 } [get_ports { lcd_r5 }];
#set_property -dict { PACKAGE_PIN J21   IOSTANDARD LVCMOS33 } [get_ports { lcd_r6 }];
#set_property -dict { PACKAGE_PIN J20   IOSTANDARD LVCMOS33 } [get_ports { lcd_r7 }];
#set_property -dict { PACKAGE_PIN H18   IOSTANDARD LVCMOS33 } [get_ports { lcd_g0 }];
#set_property -dict { PACKAGE_PIN J19   IOSTANDARD LVCMOS33 } [get_ports { lcd_g1 }];
#set_property -dict { PACKAGE_PIN H15   IOSTANDARD LVCMOS33 } [get_ports { lcd_g2 }];
#set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { lcd_g3 }];
#set_property -dict { PACKAGE_PIN G18   IOSTANDARD LVCMOS33 } [get_ports { lcd_g4 }];
#set_property -dict { PACKAGE_PIN G17   IOSTANDARD LVCMOS33 } [get_ports { lcd_g5 }];
#set_property -dict { PACKAGE_PIN G13   IOSTANDARD LVCMOS33 } [get_ports { lcd_g6 }];
#set_property -dict { PACKAGE_PIN H13   IOSTANDARD LVCMOS33 } [get_ports { lcd_g7 }];
#set_property -dict { PACKAGE_PIN D22   IOSTANDARD LVCMOS33 } [get_ports { lcd_b0 }];
#set_property -dict { PACKAGE_PIN E22   IOSTANDARD LVCMOS33 } [get_ports { lcd_b1 }];
#set_property -dict { PACKAGE_PIN B22   IOSTANDARD LVCMOS33 } [get_ports { lcd_b2 }];
#set_property -dict { PACKAGE_PIN C22   IOSTANDARD LVCMOS33 } [get_ports { lcd_b3 }];
#set_property -dict { PACKAGE_PIN A19   IOSTANDARD LVCMOS33 } [get_ports { lcd_b4 }];
#set_property -dict { PACKAGE_PIN A18   IOSTANDARD LVCMOS33 } [get_ports { lcd_b5 }];
#set_property -dict { PACKAGE_PIN C20   IOSTANDARD LVCMOS33 } [get_ports { lcd_b6 }];
#set_property -dict { PACKAGE_PIN D20   IOSTANDARD LVCMOS33 } [get_ports { lcd_b7 }];

##Quad SPI Flash

#set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { qspi_sck }];
#set_property -dict { PACKAGE_PIN L12   IOSTANDARD LVCMOS33 } [get_ports { qspi_cs }];
#set_property -dict { PACKAGE_PIN P22   IOSTANDARD LVCMOS33 } [get_ports { qspi_dq[0] }];
#set_property -dict { PACKAGE_PIN R22   IOSTANDARD LVCMOS33 } [get_ports { qspi_dq[1] }];
#set_property -dict { PACKAGE_PIN P21   IOSTANDARD LVCMOS33 } [get_ports { qspi_dq[2] }];
#set_property -dict { PACKAGE_PIN R21   IOSTANDARD LVCMOS33 } [get_ports { qspi_dq[3] }];

