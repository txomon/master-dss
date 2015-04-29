##############################################################################
## Filename:          /home/javier/proyectos/master/master-dss/final/drivers/axi_lite_example_v1_00_a/data/axi_lite_example_v2_1_0.tcl
## Description:       Microprocess Driver Command (tcl)
## Date:              Sat Mar  1 19:05:25 2014 (by Create and Import Peripheral Wizard)
##############################################################################

#uses "xillib.tcl"

proc generate {drv_handle} {
  xdefine_include_file $drv_handle "xparameters.h" "axi_lite_example" "NUM_INSTANCES" "DEVICE_ID" "C_BASEADDR" "C_HIGHADDR" 
}
