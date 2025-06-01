-- fonction decode_clavier.vhd

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY decode_clavier IS
    PORT (
        -- colonnes
        col4 : IN  STD_LOGIC;
        col3 : IN  STD_LOGIC;
        col2 : IN  STD_LOGIC;
        col1 : IN  STD_LOGIC;
        -- lignes
        lig4 : IN  STD_LOGIC;
        lig3 : IN  STD_LOGIC;
        lig2 : IN  STD_LOGIC;
        lig1 : IN  STD_LOGIC;
        -- touche
        touche : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
    );
END decode_clavier;

ARCHITECTURE moncodage OF decode_clavier IS
    signal temporaire: STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN
    temporaire <= col4 & col3 & col2 & col1 & lig4 & lig3 & lig2 & lig1;

    touche <= "0001" when temporaire = "00010001" else -- Touche 1
             "0100" when temporaire = "00010010" else -- Touche 4
             "0111" when temporaire = "00010100" else -- Touche 7
             "1010" when temporaire = "00011000" else -- Touche A
             "0010" when temporaire = "00100001" else -- Touche 2
             "0101" when temporaire = "00100010" else -- Touche 5
             "1000" when temporaire = "00100100" else -- Touche 8
             "0000" when temporaire = "00101000" else -- Touche 0
             "0011" when temporaire = "01000001" else -- Touche 3
             "0110" when temporaire = "01000010" else -- Touche 6
             "1001" when temporaire = "01000100" else -- Touche 9
             "1011" when temporaire = "01001000" else -- Touche B
             "1100" when temporaire = "10000001" else -- Touche C
             "1101" when temporaire = "10000010" else -- Touche D
             "1110" when temporaire = "10000100" else -- Touche E
             "1111" when temporaire = "10001000" else -- Touche F
             "0000"; -- Par défaut (aucune touche)
END moncodage;
