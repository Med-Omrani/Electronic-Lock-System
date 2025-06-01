LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY comparateur IS
    PORT (
        -- ENTREES
        touche : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
        -- SORTIES
        Sortie : OUT STD_LOGIC;
        LedR   : OUT STD_LOGIC;
        LedV   : OUT STD_LOGIC
    );
END comparateur;

ARCHITECTURE moncodage OF comparateur IS
    SIGNAL CODE : STD_LOGIC_VECTOR (3 DOWNTO 0) := "0101"; -- Exemple de code attendu
BEGIN
    -- Comparaison entre le code et la touche
    Sortie <= '1' when touche = CODE else '0'; -- Active si le code est correct

    -- Gestion des LEDs
    LedR <= '1' when touche /= CODE else '0'; -- LED rouge allumée si le code est incorrect
    LedV <= '1' when touche = CODE else '0';  -- LED verte allumée si le code est correct
END moncodage;
