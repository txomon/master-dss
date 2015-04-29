##############################################################################
## Filename:          /home/javier/proyectos/master/master-dss/lab3/drivers/led_ip_v1_00_a/data/led_ip_v2_1_0.tcl
## Description:       Microprocess Driver Command (tcl)
## Date:              Thu Jan 16 20:00:51 2014 (by Create and Import Peripheral Wizard)
##############################################################################

#uses "xillib.tcl"

proc generate {drv_handle} {
  xdefine_include_file $drv_handle "xparameters.h" "led_ip" "NUM_INSTANCES" "DEVICE_ID" "C_BASEADDR" "C_HIGHADDR" 
}
