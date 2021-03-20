library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity codif_display is
    Port ( ent : in  STD_LOGIC_VECTOR (3 downto 0);
           saida : out  STD_LOGIC_VECTOR (6 downto 0));
end codif_display;

architecture display of codif_display is

begin
	with ent select
				--anodo comum
		saida <= "0000001" WHEN "0000",--0
					"1001111" WHEN "0001",--1
					"0010010" WHEN "0010",--2
					"0000110" WHEN "0011",--3
					"1001100" WHEN "0100",--4
					"0100100" WHEN "0101",--5
					"0100000" WHEN "0110",--6
					"0001111" WHEN "0111",--7
					"0000000" WHEN "1000",--8
					"0000100" WHEN "1001",--9
					"0001000" WHEN "1010",--A
					"1100000" WHEN "1011",--B
					"0110001" WHEN "1100",--C
					"1000010" WHEN "1101",--D
					"0110000" WHEN "1110",--E
					"0111000" WHEN "1111",--F
					"1111111" WHEN OTHERS;--apagado
					
					--catodo comum sem o ponto
--					saida <= "11111100" WHEN "0000",--0
--					"0110000" WHEN "0001",--1
--					"1101101" WHEN "0010",--2
--					"1111001" WHEN "0011",--3
--					"0110011" WHEN "0100",--4
--					"1011011" WHEN "0101",--5
--					"1011111" WHEN "0110",--6
--					"1110000" WHEN "0111",--7
--					"1111111" WHEN "1000",--8
--					"1111011" WHEN "1001",--9
--					"1110111" WHEN "1010",--A
--					"0011111" WHEN "1011",--B
--					"1001110" WHEN "1100",--C
--					"0111101" WHEN "1101",--D
--					"1001111" WHEN "1110",--E
--					"1000111" WHEN "1111";--F
--					"0000000" WHEN OTHERS;--apagado


end display;

