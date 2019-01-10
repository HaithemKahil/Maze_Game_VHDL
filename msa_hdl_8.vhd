library IEEE;

use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity msa_hdl_8 is
	 Port ( clkin : in STD_LOGIC;
	 rst : in STD_LOGIC;
	 b0 : in STD_LOGIC;
	 b1 : in STD_LOGIC;
	 gs : in STD_LOGIC;
	 enable_del : out STD_LOGIC);
end msa_hdl_8;

architecture Behavioral of msa_hdl_8 is

type etat is (a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x);
signal etatpres, etatsuiv : etat;

begin
--registre d'état
xreg: process(rst,clkin)
		begin
		if(rst = '1')then
		etatpres <= a;
		elsif(clkin'event and clkin = '1')then
		etatpres <= etatsuiv;
		end if;
		end process;
		--IFL
		xifl: process(etatpres, b1,b0,gs)
		begin
		case etatpres is
		-- iteration aller à droite 
		when a =>
		if(gs = '1' and b1 = '0' and b0 = '0')then
		etatsuiv <= b;
		else
		etatsuiv <= a;
		end if;
		when b =>
		if(gs = '0')then
		etatsuiv <= c;
		else
		etatsuiv <= b;
		end if;
		
		-- iteration aller à droite
		when c =>
		if(gs = '1') then
		if(b1 = '0' and b0 = '0') then
		etatsuiv <= d;
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
		
		-- iteration aller à droite
		when e =>
		if(gs = '1') then
		if(b1 = '0' and b0 = '0') then
		etatsuiv <= f;
		else
		etatsuiv <= a;
		end if;
		else
		etatsuiv <= e;
		end if;
		when f =>
		if(gs = '0')then
		etatsuiv <= g;
		else
		etatsuiv <= f;
		end if;
			
		--iteration aller en haut 
		when g =>
		if(gs = '1') then
		if(b1 = '0' and b0 = '0') then
		etatsuiv <= h;
		else
		etatsuiv <= a;
		end if;
		else
		etatsuiv <= g;
		end if;
		when h =>
		if(gs = '0')then
		etatsuiv <= i;
		else
		etatsuiv <= h;
		end if;
		
		--iteration aller en haut 
		when i =>
		if(gs = '1') then
		if(b1 = '0' and b0 = '1') then
		etatsuiv <= j;
		else
		etatsuiv <= a;
		end if;
		else
		etatsuiv <= i;
		end if;
		when j =>
		if(gs = '0')then
		etatsuiv <= k;
		else
		etatsuiv <= j;
		end if;
		
		
		--iteration aller en haut 
		when k =>
		if(gs = '1') then
		if(b1 = '0' and b0 = '1') then
		etatsuiv <= l;
		else
		etatsuiv <= a;
		end if;
		else
		etatsuiv <= k;
		end if;
		when l =>
		if(gs = '0')then
		etatsuiv <= m;
		else
		etatsuiv <= l;
		end if;
		
		--iteration aller en haut 
		when m =>
		if(gs = '1') then
		if(b1 = '0' and b0 = '1') then
		etatsuiv <= n;
		else
		etatsuiv <= a;
		end if;
		else
		etatsuiv <= m;
		end if;
		when n =>
		if(gs = '0')then
		etatsuiv <= o;
		else
		etatsuiv <= n;
		end if;
		
		
		-- iteration aller à droite 
		when o =>
		if(gs = '1') then
		if(b1 = '1' and b0 = '0') then
		etatsuiv <= p;
		else
		etatsuiv <= a;
		end if;
		else
		etatsuiv <= o;
		end if;
		


		when p =>
		if(gs = '0')then
		etatsuiv <= q;
		else
		etatsuiv <= p;
		end if;
		
		-- iteration aller à droite 
		when q =>
		if(gs = '1') then
		if(b1 = '1' and b0 = '0') then
		etatsuiv <= r;
		else
		etatsuiv <= a;
		end if;
		else
		etatsuiv <= q;
		end if;
		when r =>
		if(gs = '0')then
		etatsuiv <= s;
		else
		etatsuiv <= r;
		end if;
		
		-- iteration aller à droite 
		when s =>
		if(gs = '1') then
		if(b1 = '0' and b0 = '1') then
		etatsuiv <= t;
		else
		etatsuiv <= a;
		end if;
		else
		etatsuiv <= s;
		end if;
		when t =>
		if(gs = '0')then
		etatsuiv <= u;
		else
		etatsuiv <= t;
		end if;
		
		-- iteration aller à droite 
		when u =>
		if(gs = '1') then
		if(b1 = '0' and b0 = '1') then
		etatsuiv <= v;
		else
		etatsuiv <= a;
		end if;
		else
		etatsuiv <= u;
		end if;
		when v=>
		if(gs = '0')then
		etatsuiv <= w;
		else
		etatsuiv <= v;
		end if;
		
		-- iteration aller à droite 
		when w =>
		if(gs = '1') then
		if(b1 = '1' and b0 = '0') then
		etatsuiv <= x;
		else
		etatsuiv <= a;
		end if;
		else
		etatsuiv <= w;
		end if;
		
		
		when x =>
		etatsuiv <= x;
		when others => etatsuiv <= a;
		end case;
end process;
--OFL

enable_del <= '1' when etatpres = x else '0';

end Behavioral;




