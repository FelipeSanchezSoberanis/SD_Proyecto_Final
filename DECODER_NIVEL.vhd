library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity DECODER_NIVEL is
    Port(
        in_decoder_nivel: in std_logic_vector(7 downto 0);
        out1_decoder_nivel: out std_logic_vector(3 downto 0);
        out2_decoder_nivel: out std_logic_vector(7 downto 0)
    );
end DECODER_NIVEL;

architecture DECODER_NIVEL_ARCH of DECODER_NIVEL is
    signal tempValue: integer;
begin
    tempValue <= to_integer(unsigned(in_decoder_nivel));
    process(tempValue)
    begin
        case tempValue is
            when 0 to 20 =>
                out1_decoder_nivel <= "0000";
                out2_decoder_nivel <= "00000000";
            when 21 to 30 =>
                out1_decoder_nivel <= "0001";
                out2_decoder_nivel <= "00010100";
            when 31 to 40 =>
                out1_decoder_nivel <= "0010";
                out2_decoder_nivel <= "00011110";
            when 41 to 50 =>
                out1_decoder_nivel <= "0011";
                out2_decoder_nivel <= "00101000";
            when 51 to 60 =>
                out1_decoder_nivel <= "0100";
                out2_decoder_nivel <= "00110010";
            when 61 to 70 =>
                out1_decoder_nivel <= "0101";
                out2_decoder_nivel <= "00111100";
            when 71 to 80 =>
                out1_decoder_nivel <= "0110";
                out2_decoder_nivel <= "01000110";
            when 81 to 90 =>
                out1_decoder_nivel <= "0111";
                out2_decoder_nivel <= "01010000";
            when 91 to 100 =>
                out1_decoder_nivel <= "1000";
                out2_decoder_nivel <= "01011010";
            when 101 to 110 =>
                out1_decoder_nivel <= "1001";
                out2_decoder_nivel <= "01100100";
            when 111 to 120 =>
                out1_decoder_nivel <= "1010";
                out2_decoder_nivel <= "01101110";
            when 121 to 130 =>
                out1_decoder_nivel <= "1011";
                out2_decoder_nivel <= "01111000";
            when 131 to 140 =>
                out1_decoder_nivel <= "1100";
                out2_decoder_nivel <= "10000010";
            when 141 to 150 =>
                out1_decoder_nivel <= "1101";
                out2_decoder_nivel <= "10001100";
            when 151 to 160 =>
                out1_decoder_nivel <= "1110";
                out2_decoder_nivel <= "10010110";
            when 161 to 255 =>
                out1_decoder_nivel <= "1111";
                out2_decoder_nivel <= "10100000";
            when others =>
                out1_decoder_nivel <= "0000";
                out2_decoder_nivel <= "00000000";
        end case;
    end process;
end DECODER_NIVEL_ARCH;