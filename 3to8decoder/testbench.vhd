library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is
-- DUT component
component decoder is
 port(input : in STD_LOGIC_VECTOR(2 downto 0);
     output: out STD_LOGIC_VECTOR(7 downto 0));
end component;

signal input : STD_LOGIC_VECTOR(2 downto 0);
signal output: STD_LOGIC_VECTOR(7 downto 0);

begin
  -- Connect DUT
   uut: decoder PORT MAP (input => input, output => output);
   
  process
  begin
    input <= "000";    wait for 1 ns;
    input <= "001";    wait for 1 ns;
    input <= "010";    wait for 1 ns;
    input <= "011";    wait for 1 ns;
    input <= "100";    wait for 1 ns;
    input <= "101";    wait for 1 ns;
    input <= "110";   wait for 1 ns;
    input <= "111";    wait for 1 ns;
    wait;
  end process;
end tb;
