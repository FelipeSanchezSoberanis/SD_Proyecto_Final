library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BLOCK_PWM is
    Port(
        in_PWM: in std_logic_vector(7 downto 0);
        clk: in std_logic;
        out_PWM: out std_logic
    );
end BLOCK_PWM;

architecture BLOCK_PWM_ARCH of BLOCK_PWM is
    signal tempOut: std_logic := '1';
    signal counterLow: integer := 15;
    signal tempCounterLow: integer := 1;
begin
    process(clk, in_PWM)
    begin
        if rising_edge(clk) then
            tempCounterLow <= tempCounterLow + 1;
            if tempCounterLow = counterLow then
                tempOut <= '0';
            elsif tempCounterLow = 300 then
                tempOut <= '1';
                tempCounterLow <= 1;
                counterLow <= 15;
            end if;

            case in_PWM is
                when "00000000" =>
                    counterLow <= 15;
                when "00010100" =>
                    counterLow <= 16;
                when "00011110" =>
                    counterLow <= 17;
                when "00101000" =>
                    counterLow <= 18;
                when "00110010" =>
                    counterLow <= 19;
                when "00111100" =>
                    counterLow <= 20;
                when "01000110" =>
                    counterLow <= 21;
                when "01010000" =>
                    counterLow <= 22;
                when "01011010" =>
                    counterLow <= 23;
                when "01100100" =>
                    counterLow <= 24;
                when "01101110" =>
                    counterLow <= 25;
                when "01111000" =>
                    counterLow <= 26;
                when "10000010" =>
                    counterLow <= 27;
                when "10001100" =>
                    counterLow <= 28;
                when "10010110" =>
                    counterLow <= 29;
                when "10100000" =>
                    counterLow <= 30;
                when others =>
                    counterLow <= 15;
            end case;
        end if;
    end process;
    out_PWM <= tempOut;
end BLOCK_PWM_ARCH;