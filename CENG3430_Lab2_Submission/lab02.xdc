## Full adder
## Input
set_property PACKAGE_PIN H18 [get_ports {A[0]}]; # "SW5"
    set_property IOSTANDARD LVCMOS25 [get_ports {A[0]}];
set_property PACKAGE_PIN H17 [get_ports {A[1]}]; # "SW6"
    set_property IOSTANDARD LVCMOS25 [get_ports {A[1]}]; 
set_property PACKAGE_PIN M15 [get_ports {A[2]}]; # "SW7" 
    set_property IOSTANDARD LVCMOS25 [get_ports {A[2]}];   
    
      
set_property PACKAGE_PIN F22 [get_ports {B[0]}]; # "SW0"
    set_property IOSTANDARD LVCMOS25 [get_ports {B[0]}];
 
set_property PACKAGE_PIN G22 [get_ports {B[1]}]; # "SW1"  
    set_property IOSTANDARD LVCMOS25 [get_ports {B[1]}];
set_property PACKAGE_PIN H22 [get_ports {B[2]}]; # "SW2"     
    set_property IOSTANDARD LVCMOS25 [get_ports {B[2]}];    
set_property PACKAGE_PIN P16 [get_ports {Cin}]; # "BTNC"
    set_property IOSTANDARD LVCMOS25 [get_ports {Cin}];
    
## Output
set_property PACKAGE_PIN T22 [get_ports {Sum[0]}]; # "LED0"
    set_property IOSTANDARD LVCMOS33 [get_ports {Sum[0]}]; 
set_property PACKAGE_PIN T21 [get_ports {Sum[1]}]; # "LED1"
    set_property IOSTANDARD LVCMOS33 [get_ports {Sum[1]}]; 
set_property PACKAGE_PIN U22 [get_ports {Sum[2]}]; # "LED2"  
    set_property IOSTANDARD LVCMOS33 [get_ports {Sum[2]}]; 
set_property PACKAGE_PIN U21 [get_ports {Sum[3]}]; # "LED3"  
    set_property IOSTANDARD LVCMOS33 [get_ports {Sum[3]}];     
