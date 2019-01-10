----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:17:27 12/28/2016 
-- Design Name: 
-- Module Name:    vga_driver - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity vga_driver is

    Port ( CLK : in  STD_LOGIC;
			  A : in STD_LOGIC_VECTOR ( 63 downto 0);
		     after_play: in STD_LOGIC; 
		     win : in  STD_LOGIC;
           HSYNC : out  STD_LOGIC;
           VSYNC : out  STD_LOGIC;
           RGB : out  STD_LOGIC_VECTOR (2 downto 0)
		);
end vga_driver;

architecture Behavioral of vga_driver is

	signal clk25 : std_logic := '0';
	
	constant HD : integer := 639;  --  639   Horizontal Display (640)
	constant HFP : integer := 16;         --   16   Right border (front porch)
	constant HSP : integer := 96;       --   96   Sync pulse (Retrace)
	constant HBP : integer := 48;        --   48   Left boarder (back porch)
	
	constant VD : integer := 479;   --  479   Vertical Display (480)
	constant VFP : integer := 10;       	 --   10   Right border (front porch)
	constant VSP : integer := 2;				 --    2   Sync pulse (Retrace)
	constant VBP : integer := 33;       --   33   Left boarder (back porch)
	
	signal hPos : integer := 0;
	signal vPos : integer := 0;
	
	signal x : integer :=10;
	signal y : integer :=40;
	signal z : integer :=10;
	signal w : integer :=40;
	signal videoOn : std_logic := '0';

begin


clk_div:process(CLK)
begin
	if(CLK'event and CLK = '1')then
		clk25 <= not clk25;
	end if;
end process;

Horizontal_position_counter:process(clk25)
begin
	if(clk25'event and clk25 = '1')then
		if (hPos = (HD + HFP + HSP + HBP)) then
			hPos <= 0;
		else
			hPos <= hPos + 1;
		end if;
	end if;
end process;

Vertical_position_counter:process(clk25, hPos)
begin
	if(clk25'event and clk25 = '1')then
		if(hPos = (HD + HFP + HSP + HBP))then
			if (vPos = (VD + VFP + VSP + VBP)) then
				vPos <= 0;
			else
				vPos <= vPos + 1;
			end if;
		end if;
	end if;
end process;

Horizontal_Synchronisation:process(clk25, hPos)
begin
	if(clk25'event and clk25 = '1')then
		if((hPos <= (HD + HFP)) OR (hPos > HD + HFP + HSP))then
			HSYNC <= '1';
		else
			HSYNC <= '0';
		end if;
	end if;
end process;

Vertical_Synchronisation:process(clk25, vPos)
begin
	if(clk25'event and clk25 = '1')then
		if((vPos <= (VD + VFP)) OR (vPos > VD + VFP + VSP))then
			VSYNC <= '1';
		else
			VSYNC <= '0';
		end if;
	end if;
end process;

video_on:process(clk25, hPos, vPos)
begin
	if(clk25'event and clk25 = '1')then
		if(hPos <= HD and vPos <= VD)then
			videoOn <= '1';
		else
			videoOn <= '0';
		end if;
	end if;
end process;


draw:process(clk25, hPos, vPos, videoOn)
begin
for i in 0 to 63 loop
	  if (A(i) ='1')then
			 if(clk25'event and clk25 = '1')then
				if(videoOn = '1')then
					if((hPos >= x and hPos <= y) AND (vPos >= z and vPos <= w))then
						RGB <= "111";
					else
						RGB <= "000";
					end if;
				 else
					RGB <= "000";
				end if;
			 end if;
		 elsif ((after_play='0')) then
				if(clk25'event and clk25 = '1')then
						RGB <= "000";
				end if;
		 elsif (win='1') then
				 if(clk25'event and clk25 = '1')then
					if(videoOn = '1')then
						 if((hPos >= x and hPos <= y ) AND (vPos >= z and vPos <= w))then
							RGB <= "100";
						 else
							RGB <= "000";
						 end if;
					 else
						RGB <= "000";
					end if;
				end if;
		 elsif (win='0') then
				 if(clk25'event and clk25 = '1')then
					if(videoOn = '1')then
						 if((hPos >= x and hPos <= y )AND (vPos >= z and vPos <= w))then
							RGB <= "101";
						 else
							RGB <= "000";
						 end if;
					 else
						RGB <= "000";
					end if;
				end if;
		end if;
		z <= z +50 ;
		w <= w + 50 ;
		if (i mod 10 = 9) then 
			z<=10;
			w<=40;
			x<=x+50;
			y<=y+50;
		end if;

end loop;
x<=10;
y<=40;
z<=10;
w<=40;

end process;


end Behavioral;

