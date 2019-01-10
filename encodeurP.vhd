library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity encodeurP is
generic (
n : positive := 2 -- largeur du code de sortie
);
port(
D : in std_logic_vector(2 ** n - 1 downto 0); -- le bus d'entr�e
A : out std_logic_vector(n - 1 downto 0); -- le code de sortie
V : out std_logic -- '1' si au moins un signal d'entr�e est actif
);
end encodeurP;
architecture comportementale of encodeurP is
begin
process(D)
begin
-- des valeurs par d�faut sont essentielles
-- au cas o� aucun signal d'entr�e n'est actif
V <= '0';
A <= (others => '-');
for k in 2 ** n - 1 downto 0 loop -- priorit� aux valeurs �lev�es
if D(k) = '1' then
A <= std_logic_vector(to_unsigned(k, n));
V <= '1';
exit; -- termine la boucle
end if;
end loop;
end process;
end comportementale;