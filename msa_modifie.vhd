library IEEE;

use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity msa_hdl is
	 Port ( clkin : in STD_LOGIC;
	 rst : in STD_LOGIC;
	 b0 : in STD_LOGIC;
	 b1 : in STD_LOGIC;
	 gs : in STD_LOGIC;
	 enable_del : out STD_LOGIC);
end msa_hdl;

architecture Behavioral of msa_hdl is

type etat is (a,b,c,d,e,f,g,h);
type etats is array (positive range <>) of etat;
signal etatpres, etatsuiv : etat ; 
signal etat1 : etats(1 to 5);
signal i : integer ; 
begin
--registre d'état
xreg: process(rst,clkin)
		begin
		etat1 <= a & a & a & a & a		; 
		i <= 0 ;
		if(rst = '1')then
		etatpres <= etat1(0);
		elsif(clkin'event and clkin = '1')then
		etatpres <= etatsuiv;
		end if;
		end process;
		--IFL
		xifl: process(etatpres, b1,b0,gs)
		begin
		case etatpres is
		
		when a =>
		if(gs = '1' and b1 = '0' and b0 = '0')then
		i <= i+ 1  ;
		if(i = 5 ) then 
		etatsuiv <= h ; 
		else
		etatsuiv <= etat1(i); 
		end if;
		else
		etatsuiv <= a;
		end if;
		when b =>
		if(gs = '0')then
		etatsuiv <= c;
		else
		etatsuiv <= b;
		end if;
		when c =>
		if(gs = '1') then
		if(b1 = '0' and b0 = '1') then
		i <= i+ 1  ;
		if(i = 5 ) then
		etatsuiv <= h ; 
		else
		etatsuiv <= etat1(i); 
		end if; 
		else
		etatsuiv <= a;
		end if;
		else
		etatsuiv <= c;
		end if;
		when d =>
		if(gs = '0')then
		etatsuiv <= e;
		else
		etatsuiv <= d;
		end if;
		when e =>
		if(gs = '1') then
		if(b1 = '1' and b0 = '0') then
		i <= i+ 1  ;
		if(i = 5 ) then
		etatsuiv <= h ;
		else
		etatsuiv <= etat1(i); 
		end if; 
		else
		etatsuiv <= a;
		end if;
		else
		etatsuiv <= e;
		end if;
		
		-- On rajoute 2 états 
		when f =>
		if(gs = '0')then
		etatsuiv <= g;
		else
		etatsuiv <= f;
		end if;
		when g =>
		if(gs = '1') then
		if(b1 = '1' and b0 = '1') then
		i <= i+ 1  ;
		if(i = 5)then
		etatsuiv <= h ;
		else
		etatsuiv <= etat1(i); 
		end if;
		else
		etatsuiv <= a;
		end if;
		else
		etatsuiv <= g;
		end if;
		when h =>
		etatsuiv <= h;
		when others => etatsuiv <= a;
		end case;
end process;
--OFL

enable_del <= '1' when etatpres = h else '0';

end Behavioral;