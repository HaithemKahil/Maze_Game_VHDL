library IEEE;

use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
entity msa_hdl is
	 Port ( 	 clkin : in STD_LOGIC;
					rst : in STD_LOGIC;
					 b0 : in STD_LOGIC;
					 b1 : in STD_LOGIC;
					 gs : in STD_LOGIC;
		  enable_del : out STD_LOGIC;
				 score : out std_logic_vector(7 downto 0)
				 );
end msa_hdl;

architecture Behavioral of msa_hdl is

type etat is (a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x);
signal etatpres, etatsuiv : etat;
signal tmp_score: std_logic_vector(7 downto 0):="00000000";
signal not_clkin :STD_LOGIC:=not clkin;
signal enable_game : std_logic :='1';
begin
--registre d'état



xreg: process(rst,clkin)
		begin
			if(rst = '1')then
				etatpres <= a;	
			elsif(rising_edge(clkin))then
				etatpres <= etatsuiv;
			end if;
		end process;
		--IFL
xifl: process(rst,not_clkin,etatpres, b1,b0,gs)
		begin
			if(rst = '1') then tmp_score <= "00000000";end if;
			if(rising_edge(not_clkin) and enable_game = '1') then
				case etatpres is
				-- iteration aller à droite 
					when a =>
						if(gs = '1' and b1 = '0' and b0 = '0')then
							etatsuiv <= b;
							tmp_score <= tmp_score+1;
						else
							etatsuiv <= a;
							tmp_score<="00000000";
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
								tmp_score <= tmp_score+1;
							else
								etatsuiv <= a;
								tmp_score<="00000000";
							end if;
						else
							etatsuiv <= c;
						end if;
					when d =>
						if(gs = '0')then
							etatsuiv <= e;
				--
						else
							etatsuiv <= d;
						end if;
				
				-- iteration aller à droite
					when e =>
						if(gs = '1') then
							if(b1 = '0' and b0 = '0') then
								etatsuiv <= f;
								tmp_score <= tmp_score+1;
							else
								etatsuiv <= a;
								tmp_score<="00000000";
							end if;
						else
							etatsuiv <= e;
						end if;
					when f =>
						if(gs = '0')then
							etatsuiv <= g;
					--
						else
							etatsuiv <= f;
						end if;
					
				--iteration aller en haut 
					when g =>
						if(gs = '1') then
							if(b1 = '1' and b0 = '1') then
								etatsuiv <= h;
								tmp_score <= tmp_score+1;
							else
								etatsuiv <= a;
								tmp_score<="00000000";
							end if;
						else
							etatsuiv <= g;
						end if;
					when h =>
						if(gs = '0')then
							etatsuiv <= i;
				--
						else
							etatsuiv <= h;
						end if;
				
				--iteration aller en haut 
					when i =>
						if(gs = '1') then
							if(b1 = '1' and b0 = '1') then
								etatsuiv <= j;
								tmp_score <= tmp_score+1;
							else
								etatsuiv <= a;
								tmp_score<="00000000";
							end if;
						else
							etatsuiv <= i;
						end if;
					when j =>
						if(gs = '0')then
							etatsuiv <= k;
				--
						else
							etatsuiv <= j;
						end if;
				
				
				--iteration aller en haut 
					when k =>
						if(gs = '1') then
							if(b1 = '1' and b0 = '1') then
								etatsuiv <= l;
								tmp_score <= tmp_score+1;
							else
								etatsuiv <= a;
								tmp_score<="00000000";
							end if;
						else
							etatsuiv <= k;
						end if;
					when l =>
						if(gs = '0')then
							etatsuiv <= m;
				--
						else
							etatsuiv <= l;
						end if;
				
				--iteration aller en haut 
					when m =>
						if(gs = '1') then
							if(b1 = '1' and b0 = '1') then
								etatsuiv <= n;
								tmp_score <= tmp_score+1;
							else
								etatsuiv <= a;
								tmp_score<="00000000";
							end if;
						else
							etatsuiv <= m;
						end if;
					when n =>
						if(gs = '0')then
							etatsuiv <= o;
				--
						else
							etatsuiv <= n;
						end if;
				
				
				-- iteration aller à droite 
					when o =>
						if(gs = '1') then
							if(b1 = '0' and b0 = '0') then
								etatsuiv <= p;
								tmp_score <= tmp_score+1;
							else
								etatsuiv <= a;
								tmp_score<="00000000";
							end if;
						else
							etatsuiv <= o;
						end if;
				


					when p =>
						if(gs = '0')then
							etatsuiv <= q;
				--
						else
							etatsuiv <= p;
						end if;
				
				-- iteration aller à droite 
					when q =>
						if(gs = '1') then
							if(b1 = '0' and b0 = '0') then
								etatsuiv <= r;
								tmp_score <= tmp_score+1;
							else
								etatsuiv <= a;
								tmp_score<="00000000";
							end if;
						else
							etatsuiv <= q;
						end if;
					when r =>
						if(gs = '0')then
							etatsuiv <= s;
				--
						else
							etatsuiv <= r;
						end if;
				
				-- iteration aller à droite 
					when s =>
						if(gs = '1') then
							if(b1 = '0' and b0 = '0') then
								etatsuiv <= t;
								tmp_score <= tmp_score+1;
							else
								etatsuiv <= a;
								tmp_score<="00000000";
							end if;
						else
							etatsuiv <= s;
						end if;
					when t =>
						if(gs = '0')then
							etatsuiv <= u;
				--
						else
							etatsuiv <= t;
						end if;
				
				-- iteration aller à droite 
					when u =>
						if(gs = '1') then
							if(b1 = '0' and b0 = '0') then
								etatsuiv <= v;
								tmp_score <= tmp_score+1;
							else
								etatsuiv <= a;
								tmp_score<="00000000";
							end if;
						else
							etatsuiv <= u;
						end if;
					when v=>
						if(gs = '0')then
							etatsuiv <= w;
				--
						else
							etatsuiv <= v;
						end if;
				
				-- iteration aller à droite 
					when w =>
						if(gs = '1') then
							if(b1 = '0' and b0 = '0') then
								etatsuiv <= x;
								tmp_score <= tmp_score+10;
							else
								etatsuiv <= a;
								tmp_score<="00000000";
							end if;
						else
							etatsuiv <= w;
						end if;
					when x =>
						etatsuiv <= x;
						enable_game <= '0';
					when others => etatsuiv <= a;tmp_score<="00000000";
				end case;
			end if;
end process;

--OFL
score<=tmp_score;
enable_del <= '1' when etatpres = x else '0';

end Behavioral;




