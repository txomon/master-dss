/*****************************************************************************
* Filename:          /home/javier/proyectos/master/master-dss/final/drivers/axi_stream_example_v1_00_a/src/axi_stream_example_selftest.c
* Version:           1.00.a
* Description:       
* Date:              Sat Mar  1 19:08:36 2014 (by Create and Import Peripheral Wizard)
*****************************************************************************/

#include "xparameters.h"
#include "axi_stream_example.h"

/* IMPORTANT:
*  Slot ID is hard coded in this example to 0. Modify it if needs to connected to different slot.
*/
#define input_slot_id   0
XStatus AXI_STREAM_EXAMPLE_SelfTest()
{
	 unsigned int input_0[16];     

	 //Initialize your input data over here: 
	 input_0[0] = 12345;     
	 input_0[1] = 24690;     
	 input_0[2] = 37035;     
	 input_0[3] = 49380;     
	 input_0[4] = 61725;     
	 input_0[5] = 74070;     
	 input_0[6] = 86415;     
	 input_0[7] = 98760;     
	 input_0[8] = 111105;     
	 input_0[9] = 123450;     
	 input_0[10] = 135795;     
	 input_0[11] = 148140;     
	 input_0[12] = 160485;     
	 input_0[13] = 172830;     
	 input_0[14] = 185175;     
	 input_0[15] = 197520;     

	 //Call the macro with instance specific slot IDs
	 axi_stream_example(
		 input_slot_id,
		 input_0    
		 );


	 return XST_SUCCESS;
}
