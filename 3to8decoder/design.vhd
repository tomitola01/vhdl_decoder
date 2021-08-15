library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity decoder is
 port(input : in STD_LOGIC_VECTOR(2 downto 0);
     output: out STD_LOGIC_VECTOR(7 downto 0));
end decoder;
 
architecture bhv of decoder is
begin
process (input, output) is
begin
  output(0) <= (not input(2)) and (not input(1)) and (not input(0));
  output(1) <= (not input(2)) and (not input(1)) and input(0);
  output(2) <= (not input(2)) and input(1) and (not input(0));
  output(3) <= (not input(2)) and input(1) and input(0);
  output(4) <= input(2)	and (not input(1)) and (not input(0));
  output(5) <= input(2) and (not input(1)) and input(0);
  output(6) <= input(2) and input(1) and (not input(0));
  output(7) <= input(2) and input(1) and input(0);
end process;
end bhv;
