## Clock signal
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { pin_clock }]; 
create_clock -add -period 10.00 [get_ports { pin_clock }];

## Buttons
set_property -dict { PACKAGE_PIN D9   IOSTANDARD LVCMOS33 } [get_ports { pin_n_reset }]; 

## LED
set_property PACKAGE_PIN F6		[get_ports { pin_led }]
set_property IOSTANDARD LVCMOS33 	[get_ports { pin_led }]