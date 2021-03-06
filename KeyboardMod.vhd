----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:31:34 01/10/2019 
-- Design Name: 
-- Module Name:    KeyboardMod - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity KeyboardMod is
    Port ( Clock : in STD_LOGIC;
	        KeyboardClock : in  STD_LOGIC;
           KeyboardData : in  STD_LOGIC;
			  kb_out : out std_logic_vector(3 downto 0)
	);
end KeyboardMod;

architecture Behavioral of KeyboardMod is

signal bitCount : integer range 0 to 100 := 0;
signal scancodeReady : STD_LOGIC := '0';
signal scancode : STD_LOGIC_VECTOR(7 downto 0);
signal breakReceived : STD_LOGIC := '0';

constant keyboardZ : STD_LOGIC_VECTOR(7 downto 0) := "00011101";
constant keyboardQ : STD_LOGIC_VECTOR(7 downto 0) := "00011100";
constant keyboardS : STD_LOGIC_VECTOR(7 downto 0) := "00011011";
constant keyboardD : STD_LOGIC_VECTOR(7 downto 0) := "00100011";

begin

	get_code : process(KeyboardClock)
	begin
		if falling_edge(KeyboardClock) then
			if bitCount = 0 and KeyboardData = '0' then --keyboard wants to send data
				scancodeReady <= '0';
				bitCount <= bitCount + 1;
			elsif bitCount > 0 and bitCount < 9 then -- shift one bit into the scancode from the left
				scancode <= KeyboardData & scancode(7 downto 1);
				bitCount <= bitCount + 1;
			elsif bitCount = 9 then -- parity bit
				bitCount <= bitCount + 1;
			elsif bitCount = 10 then -- end of message
				scancodeReady <= '1';
				bitCount <= 0;
			end if;
		end if;
	end process get_code;
	
	action_process : process(scancodeReady, scancode)
	begin
		kb_out <= "0000";
		if scancodeReady'event and scancodeReady = '1' then
			-- breakcode breaks the current scancode
			if breakReceived = '1' then 
				breakReceived <= '0';
			elsif breakReceived = '0' then
				-- scancode processing
				if scancode = "11110000" then -- mark break for next scancode
					breakReceived <= '1';
				end if;
				
				if scancode = keyboardZ then
					kb_out <= "1000";
				elsif scancode = keyboardQ then
					kb_out <= "0100";
				elsif scancode = keyboardS then
					kb_out <= "0010";
				elsif scancode = keyboardD then
					kb_out <= "0001";
				end if;
			end if;
		end if;
	end process action_process;
end Behavioral;
