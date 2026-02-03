

set_property PACKAGE_PIN E5 [get_ports clk]
set_property IOSTANDARD LVCMOS18 [get_ports clk]

## ================= RESET =================
set_property PACKAGE_PIN B6 [get_ports rst]
set_property IOSTANDARD LVCMOS18 [get_ports rst]

## ================= CONTROL INPUTS =================
set_property PACKAGE_PIN C6 [get_ports read_en]
set_property IOSTANDARD LVCMOS18 [get_ports read_en]

set_property PACKAGE_PIN B5 [get_ports write_en]
set_property IOSTANDARD LVCMOS18 [get_ports write_en]

## ================= STATUS OUTPUTS =================
set_property PACKAGE_PIN F6 [get_ports empty]
set_property IOSTANDARD LVCMOS18 [get_ports empty]

set_property PACKAGE_PIN D5 [get_ports full]
set_property IOSTANDARD LVCMOS18 [get_ports full]

##  DATA INPUT BUS 
set_property PACKAGE_PIN A6 [get_ports din[7]]
set_property PACKAGE_PIN A7 [get_ports din[6]]
set_property PACKAGE_PIN B8 [get_ports din[5]]
set_property PACKAGE_PIN C8 [get_ports din[4]]
set_property PACKAGE_PIN A8 [get_ports din[3]]
set_property PACKAGE_PIN A9 [get_ports din[2]]
set_property PACKAGE_PIN B9 [get_ports din[1]]
set_property PACKAGE_PIN C9 [get_ports din[0]]
set_property IOSTANDARD LVCMOS18 [get_ports din[*]]

## DATA OUTPUT BUS
set_property PACKAGE_PIN G6 [get_ports dout[7]]
set_property PACKAGE_PIN F7 [get_ports dout[6]]
set_property PACKAGE_PIN G8 [get_ports dout[5]]
set_property PACKAGE_PIN E8 [get_ports dout[4]]
set_property PACKAGE_PIN F8 [get_ports dout[3]]
set_property PACKAGE_PIN D9 [get_ports dout[2]]
set_property PACKAGE_PIN E9 [get_ports dout[1]]
set_property PACKAGE_PIN A5 [get_ports dout[0]]
set_property IOSTANDARD LVCMOS18 [get_ports dout[*]]
