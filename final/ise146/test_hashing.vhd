--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:10:50 03/02/2014
-- Design Name:   
-- Module Name:   /home/javier/proyectos/master/master-dss/final/ise146/test_hashing.vhd
-- Project Name:  ise146
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sha256_qp
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_hashing IS
END test_hashing;
 
ARCHITECTURE behavior OF test_hashing IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sha256_qp
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         msg_in : IN  std_logic_vector(511 downto 0);
         h_in : IN  std_logic_vector(255 downto 0);
         digest : OUT  std_logic_vector(255 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal msg_in : std_logic_vector(511 downto 0) := (others => '0');
   signal h_in : std_logic_vector(255 downto 0) := (others => '0');

 	--Outputs
   signal digest : std_logic_vector(255 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sha256_qp PORT MAP (
          clk => clk,
          reset => reset,
          msg_in => msg_in,
          h_in => h_in,
          digest => digest
        );
   
   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin
         -- insert stimulus here 
      msg_in <= X"00000000" & X"00000000" & X"00000000" & X"00000000" & X"00000000" & X"00000000" & X"00000000" & X"00000000" &
                X"00000000" & X"00000000" & X"00000000" & X"00000000" & X"00000000" & X"00000000" & X"00000000" & X"80000000";
      wait for clk_period * 12;

      msg_in <= X"00000018" & X"00000000" & X"00000000" & X"00000000" & X"00000000" & X"00000000" & X"00000000" & X"00000000" &
                X"00000000" & X"00000000" & X"00000000" & X"00000000" & X"00000000" & X"00000000" & X"00000000" & X"61626380";
      wait for clk_period * 12;

      msg_in <= X"00000028" & X"00000000" & X"00000000" & X"00000000" & X"00000000" & X"00000000" & X"00000000" & X"00000000" &
                X"00000000" & X"00000000" & X"00000000" & X"00000000" & X"00000000" & X"00000000" & X"6F800000" & X"68656C6C";
      wait for clk_period * 12;

      msg_in <= X"00000038" & X"00000000" & X"00000000" & X"00000000" & X"00000000" & X"00000000" & X"00000000" & X"00000000" &
                X"00000000" & X"00000000" & X"00000000" & X"00000000" & X"00000000" & X"00000000" & X"6F696E80" & X"62697463";
      wait for clk_period * 12;
      wait;
   end process;

END;
