----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:08:16 01/05/2019 
-- Design Name: 
-- Module Name:    ScoreCalculator - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ScoreDisplayModule is
    Port (    SCORE_VAL : in std_logic_vector(7 downto 0); 
						VALID : in std_logic;
                  I_CLK : in std_logic;
                DISP_EN : out std_logic_vector(3 downto 0);
               SEGMENTS : out std_logic_vector(7 downto 0));
end ScoreCalculator;

architecture Behavioral of ScoreDisplayModule is
	component bin_to_bcd_convertor
		Port ( BIN_CNT_IN : in std_logic_vector(7 downto 0);
                 LSD_OUT : out std_logic_vector(3 downto 0);
                 MSD_OUT : out std_logic_vector(3 downto 0);
                MMSD_OUT : out std_logic_vector(3 downto 0));
   end component;
	

	signal   cnt_dig : std_logic_vector(1 downto 0); 
   signal   digit : std_logic_vector (3 downto 0); 
   signal   lsd,msd,mmsd : std_logic_vector(3 downto 0); 
	
begin
	my_conv: bin_to_bcd_convertor 
	port map ( BIN_CNT_IN => SCORE_VAL, 
                 LSD_OUT => lsd, 
                 MSD_OUT => msd, 
                MMSD_OUT => mmsd); 
	
	process (I_CLK)
   begin
      if (rising_edge(I_CLK)) then 
         cnt_dig <= cnt_dig + 1; 
      end if; 
   end process; 
	
	segments <= "00000011" when digit = "0000"  else
               "10011111" when digit = "0001"  else
               "00100101" when digit = "0010"  else
               "00001101" when digit = "0011"  else
               "10011001" when digit = "0100"  else
               "01001001" when digit = "0101"  else
               "01000001" when digit = "0110"  else
               "00011111" when digit = "0111"  else
               "00000001" when digit = "1000"  else
               "00001001" when digit = "1001"  else
					"11111101" when digit = "1110" else   -- dash
					"11111111" when digit = "1110" else   -- blank
               "11111111"; 

	disp_en <= "1110" when cnt_dig = "00" else 
              "1101" when cnt_dig = "01" else
              "1011" when cnt_dig = "10" else
              "0111" when cnt_dig = "11" else
              "1111";

	
	process (cnt_dig, lsd, msd, mmsd, valid)
	   variable mmsd_v, msd_v : std_logic_vector(3 downto 0);    
	begin
	   mmsd_v := mmsd; 
		msd_v := msd; 
		
		-- do the lead zero blanking for two msb's
		if (mmsd_v = X"0") then 
		   if (msd_v = X"0") then 
			   msd_v := X"F"; 
			end if; 
		   mmsd_v := X"F"; 
		end if; 
			
		if (valid = '1') then
				case cnt_dig is
					when "00" => digit <= "1111"; 
					when "01" => digit <= mmsd_v; 
					when "10" => digit <= msd_v; 
					when "11" => digit <= lsd; 
					when others => digit <= "0000"; 
				end case; 
		else digit <= "1110";
		end if;
	end process;
	
end Behavioral;

