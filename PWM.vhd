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
    process(clk, counterLow, in_PWM)
    begin
        case in_PWM is
            when "00000000" =>
                counterLow <= 15;
            when "00000001" =>
                counterLow <= 16;
            when "00000010" =>
                counterLow <= 17;
            when "00000011" =>
                counterLow <= 18;
            when "00000100" =>
                counterLow <= 19;
            when "00000101" =>
                counterLow <= 20;
            when "00000110" =>
                counterLow <= 21;
            when "00000111" =>
                counterLow <= 22;
            when "00001000" =>
                counterLow <= 23;
            when "00001001" =>
                counterLow <= 24;
            when "00001010" =>
                counterLow <= 25;
            when "00001011" =>
                counterLow <= 26;
            when "00001100" =>
                counterLow <= 27;
            when "00001101" =>
                counterLow <= 28;
            when "00001110" =>
                counterLow <= 29;
            when "00001111" =>
                counterLow <= 30;
            when others =>
                counterLow <= 15;
        end case;

        if rising_edge(clk) then
            tempCounterLow <= tempCounterLow + 1;
            if tempCounterLow = counterLow then
                tempOut <= '0';
            elsif tempCounterLow = 300 then
                tempOut <= '1';
                tempCounterLow <= 1;
                counterLow <= 15;
            end if;
        end if;
    end process;
    out_PWM <= tempOut;
end BLOCK_PWM_ARCH;