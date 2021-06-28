library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DECODER_BCD7S is
    Port(
        in_DECODER_BCD7S: in std_logic_vector(3 downto 0);
        out_DECODER_BCD7S: out std_logic_vector(6 downto 0);
        an: out std_logic
    );
end DECODER_BCD7S;

architecture DECODER_BCD7S_ARCH of DECODER_BCD7S is

begin
    process(in_DECODER_BCD7S)
    begin
        case in_DECODER_BCD7S is
            when "0000" =>
                out_DECODER_BCD7s <= "1111110";
                an <= '1';
            when "0001" =>
                out_DECODER_BCD7s <= "0110000";
                an <= '1';
            when "0010" =>
                out_DECODER_BCD7s <= "1101101";
                an <= '1';
            when "0011" =>
                out_DECODER_BCD7s <= "1111001";
                an <= '1';
            when "0100" =>
                out_DECODER_BCD7s <= "0110011";
                an <= '1';
            when "0101" =>
                out_DECODER_BCD7s <= "1011011";
                an <= '1';
            when "0110" =>
                out_DECODER_BCD7s <= "1011111";
                an <= '1';
            when "0111" =>
                out_DECODER_BCD7s <= "1110000";
                an <= '1';
            when "1000" =>
                out_DECODER_BCD7s <= "1111111";
                an <= '1';
            when "1001" =>
                out_DECODER_BCD7s <= "1110011";
                an <= '1';
            when "1010" =>
                out_DECODER_BCD7s <= "1110111";
                an <= '1';
            when "1011" =>
                out_DECODER_BCD7s <= "0011111";
                an <= '1';
            when "1100" =>
                out_DECODER_BCD7s <= "0001101";
                an <= '1';
            when "1101" =>
                out_DECODER_BCD7s <= "0111101";
                an <= '1';
            when "1110" =>
                out_DECODER_BCD7s <= "1001111";
                an <= '1';
            when "1111" =>
                out_DECODER_BCD7s <= "1000111";
                an <= '1';
            when others =>
                out_DECODER_BCD7s <= "0000000";
                an <= '0';
        end case;
    end process;
end DECODER_BCD7S_ARCH;