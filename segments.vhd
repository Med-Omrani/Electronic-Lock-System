LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY segments IS
    PORT (
        -- ENTREES
        touche : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
        -- SORTIES
        a : OUT STD_LOGIC;
        b : OUT STD_LOGIC;
        c : OUT STD_LOGIC;
        d : OUT STD_LOGIC;
        e : OUT STD_LOGIC;
        f : OUT STD_LOGIC;
        g : OUT STD_LOGIC
    );
END segments;

ARCHITECTURE moncodage OF segments IS
BEGIN
    -- Affichage des segments en fonction de la touche
    a <= '1' when touche = "0000" else -- 0
         '0' when touche = "0001" else -- 1
         '1' when touche = "0010" else -- 2
         '1' when touche = "0011" else -- 3
         '0' when touche = "0100" else -- 4
         '1' when touche = "0101" else -- 5
         '1' when touche = "0110" else -- 6
         '1' when touche = "0111" else -- 7
         '1' when touche = "1000" else -- 8
         '1' when touche = "1001" else -- 9
         '0';

    b <= '1' when touche = "0000" else -- 0
         '1' when touche = "0001" else -- 1
         '1' when touche = "0010" else -- 2
         '1' when touche = "0011" else -- 3
         '1' when touche = "0100" else -- 4
         '0' when touche = "0101" else -- 5
         '1' when touche = "0110" else -- 6
         '1' when touche = "0111" else -- 7
         '1' when touche = "1000" else -- 8
         '1' when touche = "1001" else -- 9
         '0';

    c <= '1' when touche = "0000" else -- 0
         '1' when touche = "0001" else -- 1
         '0' when touche = "0010" else -- 2
         '1' when touche = "0011" else -- 3
         '1' when touche = "0100" else -- 4
         '1' when touche = "0101" else -- 5
         '1' when touche = "0110" else -- 6
         '1' when touche = "0111" else -- 7
         '1' when touche = "1000" else -- 8
         '1' when touche = "1001" else -- 9
         '0';

    d <= '1' when touche = "0000" else -- 0
         '0' when touche = "0001" else -- 1
         '1' when touche = "0010" else -- 2
         '1' when touche = "0011" else -- 3
         '1' when touche = "0100" else -- 4
         '1' when touche = "0101" else -- 5
         '1' when touche = "0110" else -- 6
         '0' when touche = "0111" else -- 7
         '1' when touche = "1000" else -- 8
         '1' when touche = "1001" else -- 9
         '0';

    e <= '1' when touche = "0000" else -- 0
         '0' when touche = "0001" else -- 1
         '1' when touche = "0010" else -- 2
         '0' when touche = "0011" else -- 3
         '0' when touche = "0100" else -- 4
         '0' when touche = "0101" else -- 5
         '1' when touche = "0110" else -- 6
         '0' when touche = "0111" else -- 7
         '1' when touche = "1000" else -- 8
         '0' when touche = "1001" else -- 9
         '0';

    f <= '1' when touche = "0000" else -- 0
         '0' when touche = "0001" else -- 1
         '0' when touche = "0010" else -- 2
         '1' when touche = "0011" else -- 3
         '1' when touche = "0100" else -- 4
         '1' when touche = "0101" else -- 5
         '1' when touche = "0110" else -- 6
         '0' when touche = "0111" else -- 7
         '1' when touche = "1000" else -- 8
         '1' when touche = "1001" else -- 9
         '0';

    g <= '0' when touche = "0000" else -- 0
         '0' when touche = "0001" else -- 1
         '1' when touche = "0010" else -- 2
         '1' when touche = "0011" else -- 3
         '1' when touche = "0100" else -- 4
         '1' when touche = "0101" else -- 5
         '1' when touche = "0110" else -- 6
         '0' when touche = "0111" else -- 7
         '1' when touche = "1000" else -- 8
         '1' when touche = "1001" else -- 9
         '0';
END moncodage;
