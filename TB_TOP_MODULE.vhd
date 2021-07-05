library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_TOP_MODULE is
end TB_TOP_MODULE;

architecture behavior of TB_TOP_MODULE is
   component TOP_MODULE is
      Port(
         in_TOP_MODULE: in std_logic_vector(7 downto 0);
         clk: in std_logic;
         LED: out std_logic_vector(6 downto 0);
         an: out std_logic;
         PWM: out std_logic;
         reset: in std_logic
      );
   end component;

   signal in_TOP_MODULE: std_logic_vector(7 downto 0) := (others => '0');
   signal clk: std_logic;
   signal LED: std_logic_vector(6 downto 0);
   signal an: std_logic;
   signal PWM: std_logic;
   signal reset: std_logic := '0';

   constant clockFrequency: integer := 15000;
   constant clockPeriod: time := 1000 ms / clockFrequency;

   signal clock: std_logic := '1';
begin
   uut: TOP_MODULE port map (
      in_TOP_MODULE => in_TOP_MODULE,
      clk => clk,
      LED => LED,
      an => an,
      PWM => PWM,
      reset => reset
   );

in_TOP_MODULE <= "00000000",
                 "00000101" after 20 ms,
                 "00001010" after 40 ms,
                 "00001111" after 60 ms,
                 "00010100" after 80 ms,
                 "00011001" after 100 ms,
                 "00011110" after 120 ms,
                 "00100011" after 140 ms,
                 "00101000" after 160 ms,
                 "00101101" after 180 ms,
                 "00110010" after 200 ms,
                 "00110111" after 220 ms,
                 "00111100" after 240 ms,
                 "01000001" after 260 ms,
                 "01000110" after 280 ms,
                 "01001011" after 300 ms,
                 "01010000" after 320 ms,
                 "01010101" after 340 ms,
                 "01011010" after 360 ms,
                 "01011111" after 380 ms,
                 "01100100" after 400 ms,
                 "01101001" after 420 ms,
                 "01101110" after 440 ms,
                 "01110011" after 460 ms,
                 "01111000" after 480 ms,
                 "01111101" after 500 ms,
                 "10000010" after 520 ms,
                 "10000111" after 540 ms,
                 "10001100" after 560 ms,
                 "10010001" after 580 ms,
                 "10010110" after 600 ms,
                 "10011011" after 620 ms,
                 "10100000" after 640 ms,
                 "10100101" after 660 ms,
                 "10101010" after 680 ms,
                 "10101111" after 700 ms,
                 "10110100" after 720 ms,
                 "10111001" after 740 ms,
                 "10111110" after 760 ms,
                 "11000011" after 780 ms,
                 "11001000" after 800 ms,
                 "11001101" after 820 ms,
                 "11010010" after 840 ms,
                 "11010111" after 860 ms,
                 "11011100" after 880 ms,
                 "11100001" after 900 ms,
                 "11100110" after 920 ms,
                 "11101011" after 940 ms,
                 "11110000" after 960 ms,
                 "11110101" after 980 ms,
                 "11111010" after 1000 ms,
                 "11111111" after 1020 ms;

   clock <= not clock after clockPeriod / 2;
   clk <= clock;
end;