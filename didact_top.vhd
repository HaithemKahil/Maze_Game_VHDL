library IEEE;

use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity didact_top is Port (  
				  rst : in STD_LOGIC;
			   clkin : in STD_LOGIC;
			 bouton1 : in STD_LOGIC;
			 bouton2 : in STD_LOGIC;
			 bouton3 : in STD_LOGIC;
			 bouton4 : in STD_LOGIC;
			 -- begin keyboard inputs
			 kb_clk  : in STD_LOGIC;
			 kb_data : in STD_LOGIC;
			 -- end keyboard inputs
				Q_del : inout STD_LOGIC_VECTOR (7 downto 0);
			SEGMENTS :out STD_LOGIC_VECTOR (7 downto 0);
			  DISP_EN:out STD_LOGIC_VECTOR (3 downto 0);
			     RGB : out std_logic_vector(7 downto 0);-- Ports d'attribution de la couleur du pixel ? afficher
               HS : out std_logic;-- Ports de synchro horizontale et verticale
               VS : out std_logic);
end didact_top;

architecture Behavioral of didact_top is
type TAB1 is array(0 to 7) of bit_vector(7 downto 0);
COMPONENT vga_int PORT(
			MCLK : IN std_logic;-- Horloge de la carte
				X : OUT std_logic_vector(9 downto 0);-- Coodonn?es du pixel ? afficher          
				Y : OUT std_logic_vector(9 downto 0);
			  VS : OUT std_logic;-- Synchro verticale et horizontale
			  HS : OUT std_logic;
	  VIDEO_EN : OUT std_logic-- Contr?le de l'affichage vid?o
		);
END COMPONENT;
	
		--Modification des couleurs des pixels
COMPONENT set_RGB
	PORT(
		CLK : in std_logic;
		--		ETAT_PARTIE : OUT std_logic;	    
		X : IN std_logic_vector(9 downto 0);
		Y : IN std_logic_vector(9 downto 0);
		VIDEO_EN : IN std_logic	;
		-- Attribution de la	 couleur du pixel ? afficher
      R : out std_logic;	
      G : out std_logic;
      B : out std_logic;
		win :in std_logic; 
		after_play :in std_logic ;
		Q_del : in STD_LOGIC_VECTOR (7 downto 0)
		);
	END COMPONENT;
signal A : STD_LOGIC_VECTOR ( 63 downto 0);
component debounce_hdl
	port(
	sig_in : in STD_LOGIC;
	clkin : in STD_LOGIC;
	sig_out : out STD_LOGIC);
end component;

COMPONENT dcm1
	PORT(
	CLK_IN1 : IN std_logic;
	RESET : IN std_logic;
	CLK_OUT1 : OUT std_logic;
	CLK_OUT2 : OUT std_logic
	);
END COMPONENT;

component msa_hdl
	port(
		clkin : in STD_LOGIC;
		  rst : in STD_LOGIC;
			b0 : in STD_LOGIC;
			b1 : in STD_LOGIC;
			gs : in STD_LOGIC;
 enable_del : out STD_LOGIC;
		score : out std_logic_vector(7 downto 0));
end component;

Component msa_hdl_2 is
	 Port ( clkin : in STD_LOGIC;
				 rst : in STD_LOGIC;
				 b0 : in STD_LOGIC;
				 b1 : in STD_LOGIC;
				 gs : in STD_LOGIC;
				 enable_del : out STD_LOGIC;
		score : out std_logic_vector(7 downto 0));
end Component;

Component msa_hdl_3 is
	 Port ( clkin : in STD_LOGIC;
		 rst : in STD_LOGIC;
		 b0 : in STD_LOGIC;
		 b1 : in STD_LOGIC;
		 gs : in STD_LOGIC;
		 enable_del : out STD_LOGIC;
		score : out std_logic_vector(7 downto 0));
end Component;

Component msa_hdl_4 is
	 Port ( clkin : in STD_LOGIC;
	 rst : in STD_LOGIC;
	 b0 : in STD_LOGIC;
	 b1 : in STD_LOGIC;
	 gs : in STD_LOGIC;
	 enable_del : out STD_LOGIC;
		score : out std_logic_vector(7 downto 0));
end Component;

Component msa_hdl_5 is
	 Port ( clkin : in STD_LOGIC;
	 rst : in STD_LOGIC;
	 b0 : in STD_LOGIC;
	 b1 : in STD_LOGIC;
	 gs : in STD_LOGIC;
	 enable_del : out STD_LOGIC;
		score : out std_logic_vector(7 downto 0));
end Component;

Component msa_hdl_6 is
	 Port ( clkin : in STD_LOGIC;
	 rst : in STD_LOGIC;
	 b0 : in STD_LOGIC;
	 b1 : in STD_LOGIC;
	 gs : in STD_LOGIC;
	 enable_del : out STD_LOGIC;
		score : out std_logic_vector(7 downto 0));
end Component;

Component msa_hdl_7 is
	 Port ( clkin : in STD_LOGIC;
	 rst : in STD_LOGIC;
	 b0 : in STD_LOGIC;
	 b1 : in STD_LOGIC;
	 gs : in STD_LOGIC;
	 enable_del : out STD_LOGIC;
		score : out std_logic_vector(7 downto 0));
end Component;

Component msa_hdl_8 is
	 Port ( clkin : in STD_LOGIC;
	 rst : in STD_LOGIC;
	 b0 : in STD_LOGIC;
	 b1 : in STD_LOGIC;
	 gs : in STD_LOGIC;
	 enable_del : out STD_LOGIC;
		score : out std_logic_vector(7 downto 0));
end Component;

Component msa_hdl_9 is
	 Port ( clkin : in STD_LOGIC;
	 rst : in STD_LOGIC;
	 b0 : in STD_LOGIC;
	 b1 : in STD_LOGIC;
	 gs : in STD_LOGIC;
	 enable_del : out STD_LOGIC;
		score : out std_logic_vector(7 downto 0));
end Component;


Component msa_hdl_10 is
	 Port ( clkin : in STD_LOGIC;
	 rst : in STD_LOGIC;
	 b0 : in STD_LOGIC;
	 b1 : in STD_LOGIC;
	 gs : in STD_LOGIC;
	 enable_del : out STD_LOGIC;
		score : out std_logic_vector(7 downto 0));
end Component;



component diviseur_clk
	port(
	 clkin : in STD_LOGIC;
	 clk2hz : buffer STD_LOGIC;
	 clk16hz : buffer STD_LOGIC;
	 clk2khz : buffer STD_LOGIC);
end component;



component encodeurP 
generic (
		n : positive := 2 -- largeur du code de sortie
   );
port(
	D : in std_logic_vector(2 ** n - 1 downto 0); -- le bus d'entre
	A : out std_logic_vector(n - 1 downto 0); -- le code de sortie
	V : out std_logic -- '1' si au moins un signal d'entre est actif
  );
end component ; 
component ScoreDisplayModule is
    Port (    SCORE_VAL : in std_logic_vector(7 downto 0); 
						VALID : in std_logic;
                  I_CLK : in std_logic;
                DISP_EN : out std_logic_vector(3 downto 0);
               SEGMENTS : out std_logic_vector(7 downto 0));
end component;

component KeyboardMod is 
	Port ( Clock : in STD_LOGIC;
				  KeyboardClock : in  STD_LOGIC;
				  KeyboardData : in  STD_LOGIC;
				  kb_out : out std_logic_vector(3 downto 0)
		);
end component;

signal clk_dcm1 : std_logic;
signal CLKIN_IBUFG_OUT : std_logic;
signal CLK0_OUT : std_logic;
signal LOCKED_OUT : std_logic;
signal gs : std_logic;
signal clk2hz,clk16hz,clk2khz : std_logic;
--signal debout1,debout2,debout3,debout4 : std_logic;
signal shreg : std_logic_vector(7 downto 0);
signal debout : std_logic_vector(3 downto 0);
signal b : std_logic_vector(1 downto 0);
---Modif Niveau--- 
signal enable_del : std_logic_vector(9 downto 0) := "0000000000"  ;
signal Niveau : integer := 0 ;
signal first_time : integer := 1 ;
signal clk25 : std_logic := '0';
signal total_score:std_logic_vector (7 downto 0) := "00000000" ;
signal score_n1,score_n2,score_n3,score_n4,score_n5,score_n6,score_n7,score_n8,score_n9,score_n10:std_logic_vector (7 downto 0) := "00000000" ;
signal x_position, y_position : std_logic_vector(9 downto 0):=(others=>'0');  
-- coordonn?es du pointeur
signal video_en : std_logic;												
-- Activation de l'affichage vid?o
signal R,G,C:std_logic;
signal win : std_logic := '0';
signal after_play : std_logic := '0' ;
signal clk100khz :std_logic;

begin	
		process(total_score)
			begin
				total_score <= score_n1+score_n2+score_n3+score_n4+score_n5+score_n6+score_n7+score_n8+score_n9+score_n10;
			end process;
			
		RGB <= R&R&R & G&G&G & C&C;
		Inst_rgb_int : set_RGB port map(
			Clk => clk2hz,
			X => x_position,
			Y => y_position,
			VIDEO_EN => video_en,
			R => R,
			G => G,
			B=> C,
			win => win, 
			after_play => after_play,
			Q_del => Q_del
		);
		Inst_vga_int: vga_int PORT MAP(
			MCLK => clk100khz,
			X => x_position,
			Y => y_position,
			VS => VS,
			HS => HS,
			VIDEO_EN => video_en
		);
		
		keyboard : KeyboardMod port map(Clock => clkin,
			KeyboardClock => kb_clk,
			KeyBoardData => kb_data,
			kb_out => key_buffer
		);
		
		
		inst1_debounce: debounce_hdl port map(
			sig_in => bouton1,
			sig_out => debout(0),
			clkin => clk2khz
		);
		inst2_debounce: debounce_hdl port map(
			sig_in => bouton2,
			sig_out => debout(1),
			clkin => clk2khz
		);
		inst3_debounce: debounce_hdl port map(
		sig_in => bouton3,
		 sig_out => debout(2),
		 clkin => clk2khz
		);
		
		inst4_debounce: debounce_hdl port map(
			sig_in => bouton4,
			sig_out => debout(3),
			clkin => clk2khz
		);
		Inst_dcm1: dcm1 PORT MAP(
			CLK_IN1 => clkin,
			RESET => rst,
			CLK_OUT1 => clk_dcm1,
			CLK_OUT2 => clk100khz
		);
		
		inst_diviseur_clk: diviseur_clk port map(
			 clkin => clk_dcm1,
			 clk2hz => clk2hz,
			 clk16hz => clk16hz,
			 clk2khz => clk2khz
		);
		
		Inst_msa_hdl_Niveau1: msa_hdl port map(
			clkin => clk_dcm1,
			rst => rst,
			b0 => b(0),
			b1 => b(1),
			gs => gs,
			enable_del => enable_del(0),
			score =>score_n1
		);
		
		Inst_msa_hdl_Niveau2: msa_hdl_2 port map(
			clkin => clk_dcm1,
			rst => rst,
			b0 => b(0),
			b1 => b(1),
			gs => gs,
			enable_del => enable_del(1),
			score =>score_n2
		);
		
		
		
		Inst_msa_hdl_Niveau3: msa_hdl_3 port map(
			clkin => clk_dcm1,
			rst => rst,
			b0 => b(0),
			b1 => b(1),
			gs => gs,
			enable_del => enable_del(2),
			score =>score_n3

		);
		
		Inst_msa_hdl_Niveau4: msa_hdl_4 port map(
			clkin => clk_dcm1,
			rst => rst,
			b0 => b(0),
			b1 => b(1),
			gs => gs,
			enable_del => enable_del(3),
			score =>score_n4

		);
		
		Inst_msa_hdl_Niveau5: msa_hdl_5 port map(
			clkin => clk_dcm1,
			rst => rst,
			b0 => b(0),
			b1 => b(1),
			gs => gs,
			enable_del => enable_del(4),
			score =>score_n5
		);
		
		Inst_msa_hdl_Niveau6: msa_hdl_6 port map(
			clkin => clk_dcm1,
			rst => rst,
			b0 => b(0),
			b1 => b(1),
			gs => gs,
			enable_del => enable_del(9),
			score =>score_n6
		);
		
		Inst_msa_hdl_Niveau7: msa_hdl_7 port map(
			clkin => clk_dcm1,
			rst => rst,
			b0 => b(0),
			b1 => b(1),
			gs => gs,
			enable_del => enable_del(5),
			score =>score_n7

		);
		
		Inst_msa_hdl_Niveau8: msa_hdl_8 port map(
			clkin => clk_dcm1,
			rst => rst,
			b0 => b(0),
			b1 => b(1),
			gs => gs,
			enable_del => enable_del(7),
			score =>score_n8
		);
		
		
		Inst_msa_hdl_Niveau9: msa_hdl_9 port map(
			clkin => clk_dcm1,
			rst => rst,
			b0 => b(0),
			b1 => b(1),
			gs => gs,
			enable_del => enable_del(6),
			score =>score_n9
		);
		
		
		Inst_msa_hdl_Niveau10: msa_hdl_10 port map(
			clkin => clk_dcm1,
			rst => rst,
			b0 => b(0),
			b1 => b(1),
			gs => gs,
			enable_del => enable_del(8),
			score =>score_n10
		);
		
		-- Description de lencodeur
		encodeur : encodeurP port map(
		  D => debout, 
		  A => b, 
		  V => gs 
		);
		
		score_display:ScoreDisplayModule port map(
						SCORE_VAL =>total_score, 
						VALID => '1',
                  I_CLK => clk2khz,
						DISP_EN =>DISP_EN,
						SEGMENTS =>SEGMENTS
			);
		
		-- Description du registre  dcalage
		xshifreg: process(rst,clk16hz)
		begin
				if(rst = '1')then
					shreg <= (others => '0');
					Niveau <= 0 ; 
				elsif(clk16hz'event and clk16hz = '1')then
					if(enable_del(Niveau) = '1')then
						shreg(0)<= clk2hz;
						shreg(7 downto 1) <= shreg(6 downto 0);
						if (Niveau < 9 ) then
							Niveau <= Niveau + 1 ;
							case Niveau is 
								when 0 => A<="1111111111111111111111111100000011011111110111111101111100011111";  
								when 1 => A<="1111111111111111111111111111111111111111000001110111011101110000";    
								when 2 => A<="1111011111110111111101111110011111101111110011111101111100011111";    
								when 3 => A<="1111111111111111111111111111000011110111111101110011011110000111";    
								when 4 => A<="0111111100000111111101111111011111110000111111111111111111111111";    
								when 5 => A<="1011111110000111111101111111000111111101111111001111111111111111";   
								when 6 => A<="1111011111110111111101111100011111011111110111111101111111000111"; 	
								when 7 => A<="1111111111111111111111111111111111000100110100011001111110111111";    
								when 8 => A<="1111111111111111111111111111111111000001110111001100011111110111";    
								when 9 => A<="1111111111111111111111111110001100001001111111011111110011111111";    
								when others =>A<="1111111111111111111111111100000011011111110111111101111100011111";  
							end case;
						else 
							-- On affiche qu'il a gagn  
							Niveau <= 0 ;
						end if ; 
					end if;
				end if;
		end process;
		
		Q_del <= shreg;
		
end Behavioral;