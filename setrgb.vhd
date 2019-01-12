--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Design Name:    
-- Module Name:    set_rgb - Behavioral
-- Project Name:   
-- Target Device:  
-- Tool versions:  
-- Description:
--
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this chiffre.
--library UNISIM;
--use UNISIM.VComponents.all;

-- ************************************************
-- ******************** ENTITE ********************
-- ************************************************

entity set_rgb is
	PORT(
			Clk : in std_logic;
-- Ports qui renvoient les coordonns du pointeur
			X : IN std_logic_vector(9 downto 0);
			Y : IN std_logic_vector(9 downto 0);
-- Port qui permet de savoir si l'on se situe dans la zone d'affichage ou non
			VIDEO_EN : IN std_logic	;
 			R : out std_logic;
      	G : out std_logic;
      	B : out std_logic;
-- Matrice de parcours
			win : in std_logic ; 
			after_play : in std_logic ;
			Q_del : in STD_LOGIC_VECTOR (7 downto 0)
		 );

end set_rgb;  

-- ******************************************************
-- ******************** ARCHITECTURE ********************
-- ******************************************************

architecture RGB of set_rgb is

---------------------------------------------------------			  								  								  								 
--------- DECLARATION DES SIGNAUX ET CONSTANTES ---------
---------------------------------------------------------
	signal h1 : integer :=100;
	signal h2 : integer :=200;
	signal v1 : integer :=100;
	signal v2 : integer :=200;
	signal i : integer :=0;																													       
-- COORDONNEES DU POINTEUR DE TYPE ENTIER
signal A : STD_LOGIC_VECTOR ( 63 downto 0);

	signal iX,iY : integer range 0 to 1023;	
																				
-- DEFINITION DE LA PALETTE DES 8 COULEURS POUR L'AFFICHAGE

	signal pixel_enable: std_logic;
	signal pixel_white: std_logic;								  
	signal pixel_yellow: std_logic;
	signal pixel_blue: std_logic;
	signal pixel_green: std_logic;																					  
	signal pixel_red: std_logic;
	signal pixel_cyan: std_logic;
	signal pixel_magenta: std_logic;   
	
-- *******************************************************************************************************
-- *******************************************************************************************************
-- ***************************************** DEBUT DU PROGRAMME ******************************************
-- *******************************************************************************************************
-- *******************************************************************************************************

begin								
																			
	iX<=CONV_INTEGER(X);		-- conversion des coordonnes binaires (X,Y) du pointeur en ENTIER									 
	iY<=CONV_INTEGER(Y);
 	
-- *******************************************************************************************************
-- *************** PROCESS SENSIBLE AU POINTEUR : AFFICHAGE D'UN PIXEL (iX,iY) SUR L'ECRAN ***************
-- *******************************************************************************************************

	DRAW_DISP : process(iX,iY)
	begin
			if(Q_del(7)='1') then
					 A<="1111111111111111111111111111111111000001110111001100011111110111";
			elsif (Q_del(6)='1') then
				    A<="1111111111111111111111111111111111000100110100011001111110111111";
			elsif(Q_del(5)='1') then
				    A<="1111011111110111111101111100011111011111110111111101111111000111";
			elsif (Q_del(4)='1') then
				    A<="1011111110000111111101111111000111111101111111001111111111111111";
			elsif (Q_del(3)='1') then
				    A<="0111111100000111111101111111011111110000111111111111111111111111";
			elsif (Q_del(2)='1') then
				    A<="1111111111111111111111111111000011110111111101110011011110000111"; 
			elsif (Q_del(1)='1') then
				    A<="1111011111110111111101111110011111101111110011111101111100011111";
						
			elsif (Q_del(0)='1') then
				    A<="1111111111111111111111111111111111111111000001110111011101110000";
						--A<="11111111
						--11111111
						--11111111
						--11111111
						--11111111
						--00000111
						--01110111
						--01110000";   
			else
					A<="1111111111111111111111111100000011011111110111111101111100011111";   			
		   end if;

---------------------------------------------------------
---------- INITIALISATION DU COLOR PIXEL A '0' ----------
---------------------------------------------------------

		pixel_enable<='0';
		pixel_white<='0';
		pixel_cyan<='0';
		pixel_magenta<='0';
		pixel_yellow<='0';
		pixel_green<='0';
		pixel_blue<='0';
		pixel_red<='0';
		
		h1 <=50;
		h2 <=90;
		v1 <=100;
		v2 <=140;
		i<=50;
		

----------------------------------------
---------- AFFICHAGE DU FILET ----------
----------------------------------------
		if ((iY > h1 and iY < h2) AND (iX >= v1 and iX <= v2)) then 
				if (A(63-0)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if; 
		elsif ((iY > h1 and iY < h2) AND (iX >= v1+i and iX <= v2+i)) then 
				if (A(63-1)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
		elsif ((iY > h1 and iY < h2) AND (iX >= v1+2*i and iX <= v2+2*i)) then 
				if (A(63-2)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
			elsif ((iY > h1 and iY < h2) AND (iX >= v1+3*i and iX <= v2+3*i)) then 
				if (A(63-3)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
			elsif ((iY > h1 and iY < h2) AND (iX >= v1+4*i and iX <= v2+4*i)) then 
				if (A(63-4)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
			elsif ((iY > h1 and iY < h2) AND (iX >= v1+5*i and iX <= v2+5*i)) then 
				if (A(63-5)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
			elsif ((iY > h1 and iY < h2) AND (iX >= v1+6*i and iX <= v2+6*i)) then 
				if (A(63-6)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
			elsif ((iY > h1 and iY < h2) AND (iX >= v1+7*i and iX <= v2+7*i)) then 
				if (A(63-7)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
			elsif ((iY > h1+i and iY < h2+i) AND (iX >= v1 and iX <= v2 )) then 
				if (A(63-8)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
			elsif ((iY > h1+i and iY < h2+i) AND (iX >= v1+i and iX <= v2+i)) then 
				if (A(63-9)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
			elsif ((iY > h1+i and iY < h2+i) AND (iX >= v1+2*i and iX <= v2+2*i)) then 
				if (A(63-10)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
			elsif ((iY > h1+i and iY < h2+i) AND (iX >= v1+3*i and iX <= v2+3*i)) then 
				if (A(63-11)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
			elsif ((iY > h1+i and iY < h2+i) AND (iX >= v1+4*i and iX <= v2+4*i)) then 
				if (A(63-12)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
			elsif ((iY > h1+i and iY < h2+i) AND (iX >= v1+5*i and iX <= v2+5*i)) then 
				if (A(63-13)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
			elsif ((iY > h1+i and iY < h2+i) AND (iX >= v1+6*i and iX <= v2+6*i)) then 
				if (A(63-14)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
			elsif ((iY > h1+i and iY < h2+i) AND (iX >= v1+7*i and iX <= v2+7*i)) then 
				if (A(63-15)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
			elsif ((iY > h1+2*i and iY < h2+2*i) AND (iX >= v1 and iX <= v2)) then 
				if (A(63-16)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
			elsif ((iY > h1+2*i and iY < h2+2*i) AND (iX >= v1+i and iX <= v2+i)) then 
				if (A(63-17)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
			
			elsif ((iY > h1+2*i and iY < h2+2*i) AND (iX >= v1+2*i and iX <= v2+2*i)) then 
				if (A(63-18)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
				
			elsif ((iY > h1+2*i and iY < h2+2*i) AND (iX >= v1+3*i and iX <= v2+3*i)) then 
				if (A(63-19)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
			
			elsif ((iY > h1+2*i and iY < h2+2*i) AND (iX >= v1+4*i and iX <= v2+4*i)) then 
				if (A(63-20)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
			
			elsif ((iY > h1+2*i and iY < h2+2*i) AND (iX >=v1+5*i and iX <= v2+5*i)) then 
				if (A(63-21)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
			
			elsif ((iY > h1+2*i and iY < h2+2*i) AND (iX >= v1+6*i and iX <= v2+6*i)) then 
				if (A(63-22)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
			
			elsif ((iY > h1+2*i and iY < h2+2*i) AND (iX >= v1+7*i and iX <= v2+7*i)) then 
				if (A(63-23)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
			
			elsif ((iY > h1+3*i and iY < h2+3*i) AND (iX >= v1 and iX <= v2)) then 
				if (A(63-24)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
			
			elsif ((iY > h1+3*i and iY < h2+3*i) AND (iX >= v1+i and iX <= v2+i)) then 
				if (A(63-25)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
			elsif ((iY > h1+3*i and iY < h2+3*i) AND (iX >= v1+2*i and iX <= v2+2*i)) then 
				if (A(63-26)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
			elsif ((iY > h1+3*i and iY < h2+3*i) AND (iX >= v1+3*i and iX <= v2+3*i)) then 
				if (A(63-27)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
			elsif ((iY > h1+3*i and iY < h2+3*i) AND (iX >= v1+4*i and iX <= v2+4*i)) then 
				if (A(63-28)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
			elsif ((iY > h1+3*i and iY < h2+3*i) AND (iX >= v1+5*i and iX <= v2+5*i)) then 
				if (A(63-29)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
			elsif ((iY > h1+3*i and iY < h2+3*i) AND (iX >= v1+6*i and iX <= v2+6*i)) then 
				if (A(63-30)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
			elsif ((iY > h1+3*i and iY < h2+3*i) AND (iX >= v1+7*i and iX <= v2+7*i)) then 
				if (A(63-31)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
			elsif ((iY > h1+3*i and iY < h2+3*i) AND (iX >= v1+7*i and iX <= v2+7*i)) then 
				if (A(63-31)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
			elsif ((iY > h1+4*i and iY < h2+4*i) AND (iX >= v1 and iX <= v2)) then 
				if (A(63-32)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
			elsif ((iY > h1+4*i and iY < h2+4*i) AND (iX >= v1+i and iX <= v2+i)) then 
				if (A(63-33)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
			elsif ((iY > h1+4*i and iY < h2+4*i) AND (iX >= v1+2*i and iX <= v2+2*i)) then 
				if (A(63-34)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
			elsif ((iY > h1+4*i and iY < h2+4*i) AND (iX >= v1+3*i and iX <= v2+3*i)) then 
				if (A(63-35)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
			elsif ((iY > h1+4*i and iY < h2+4*i) AND (iX >= v1+4*i and iX <= v2+4*i)) then 
				if (A(63-36)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
			elsif ((iY > h1+4*i and iY < h2+4*i) AND (iX >= v1+5*i and iX <= v2+5*i)) then 
				if (A(63-37)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
			elsif ((iY > h1+4*i and iY < h2+4*i) AND (iX >= v1+6*i and iX <= v2+6*i)) then 
				if (A(63-38)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
			elsif ((iY > h1+4*i and iY < h2+4*i) AND (iX >= v1+7*i and iX <= v2+7*i)) then 
				if (A(63-39)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
			
			elsif ((iY > h1+5*i and iY < h2+5*i) AND (iX >= v1 and iX <= v2)) then 
				if (A(63-40)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
			elsif ((iY > h1+5*i and iY < h2+5*i) AND (iX >= v1+i and iX <= v2+i)) then 
				if (A(63-41)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
				elsif ((iY > h1+5*i and iY < h2+5*i) AND (iX >= v1+2*i and iX <= v2+2*i)) then 
				if (A(63-42)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
				elsif ((iY > h1+5*i and iY < h2+5*i) AND (iX >= v1+3*i and iX <= v2+3*i)) then 
				if (A(63-43)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
				elsif ((iY > h1+5*i and iY < h2+5*i) AND (iX >= v1+4*i and iX <= v2+4*i)) then 
				if (A(63-44)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
				elsif ((iY > h1+5*i and iY < h2+5*i) AND (iX >= v1+5*i and iX <= v2+5*i)) then 
				if (A(63-45)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
				elsif ((iY > h1+5*i and iY < h2+5*i) AND (iX >= v1+6*i and iX <= v2+6*i)) then 
				if (A(63-46)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
				elsif ((iY > h1+5*i and iY < h2+5*i) AND (iX >= v1+7*i and iX <= v2+7*i)) then 
				if (A(63-47)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
				elsif ((iY > h1+6*i and iY < h2+6*i) AND (iX >= v1 and iX <= v2)) then 
				if (A(63-48)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
				elsif ((iY > h1+6*i and iY < h2+6*i) AND (iX >= v1+i and iX <= v2+i)) then 
				if (A(63-49)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
				elsif ((iY > h1+6*i and iY < h2+6*i) AND (iX >= v1+2*i and iX <= v2+2*i)) then 
				if (A(63-50)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
				elsif ((iY > h1+6*i and iY < h2+6*i) AND (iX >= v1+3*i and iX <= v2+3*i)) then 
				if (A(63-51)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
				elsif ((iY > h1+6*i and iY < h2+6*i) AND (iX >= v1+4*i and iX <= v2+4*i)) then 
				if (A(63-52)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
				elsif ((iY > h1+6*i and iY < h2+6*i) AND (iX >= v1+5*i and iX <= v2+5*i)) then 
				if (A(63-53)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
				elsif ((iY > h1+6*i and iY < h2+6*i) AND (iX >= v1+6*i and iX <= v2+6*i)) then 
				if (A(63-54)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
				elsif ((iY > h1+6*i and iY < h2+6*i) AND (iX >= v1+7*i and iX <= v2+7*i)) then 
				if (A(63-55)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
				elsif ((iY > h1+7*i and iY < h2+7*i) AND (iX >= v1 and iX <= v2)) then 
				if (A(63-56)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
				elsif ((iY > h1+7*i and iY < h2+7*i) AND (iX >= v1+i and iX <= v2+i)) then 
				if (A(63-57)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
				elsif ((iY > h1+7*i and iY < h2+7*i) AND (iX >= v1+2*i and iX <= v2+2*i)) then 
				if (A(63-58)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
				elsif ((iY > h1+7*i and iY < h2+7*i) AND (iX >= v1+3*i and iX <= v2+3*i)) then 
				if (A(63-59)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
				elsif ((iY > h1+7*i and iY < h2+7*i) AND (iX >= v1+4*i and iX <= v2+4*i)) then 
				if (A(63-60)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
				elsif ((iY > h1+7*i and iY < h2+7*i) AND (iX >= v1+5*i and iX <= v2+5*i)) then 
				if (A(63-61)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
				elsif ((iY > h1+7*i and iY < h2+7*i) AND (iX >= v1+6*i and iX <= v2+6*i)) then 
				if (A(63-62)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
				elsif ((iY > h1+7*i and iY < h2+7*i) AND (iX >= v1+7*i and iX <= v2+7*i)) then 
				if (A(63-63)='1') then
					pixel_enable<='1';
					pixel_white<='1';
			  elsif ((after_play='1')) then
					if (win='1') then 
						pixel_enable<='1';
						pixel_green<='1';
					else
						pixel_enable <= '1';
						pixel_red <= '1';
					end if;
				end if;
				
			
			
			 
				
				
		end if;
end process;


-----------------------------------------------------------------------------			  								  								  								 
--------- PALETTE VIDEO : ACTIVATION DU PIXEL DE COORDONNEE (iX,iY) ---------
-----------------------------------------------------------------------------


process(VIDEO_EN, pixel_enable, pixel_white, pixel_yellow,pixel_blue,pixel_green,pixel_red,pixel_cyan,pixel_magenta)
begin
		  if VIDEO_EN='1' and pixel_enable='1' then
		     
			  if pixel_white='1' then
			    R <='1'; G <='1'; B <='1';			-- BLANC
	   	  end if;
																				  
 			  if pixel_yellow='1' then					-- JAUNE
				 R <='1'; G <='1'; B <='0';
			  end if;

			  if pixel_blue='1' then					-- BLEU
			  	 R <='0'; G <='0'; B <='1';
			  end if;

			  if pixel_green='1' then					-- VERT
			  	 R <='0'; G <='1'; B <='0';
			  end if;			
			 													
			  if pixel_red='1' then						-- ROUGE
				 R <='1'; G <='0'; B <='0';
			  end if;

			  if pixel_cyan='1' then					-- CYAN
			  	 R <='0'; G <='1'; B <='1';
			  end if;

			  if pixel_magenta='1' then				-- MAGENTA
			  	 R <='1'; G <='0'; B <='1';
			  end if;

			 else
			 
			    R <='0'; G <='0'; B <='0';		   -- NOIR 
   		  
		  end if;							  
		
end process;

	
end RGB;
																	