library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TOP_MODULE is
    Port(
        in_TOP_MODULE: in std_logic_vector(7 downto 0);
        clk: in std_logic;
        LED: out std_logic_vector(6 downto 0);
        an: out std_logic;
        PWM: out std_logic
    );
end TOP_MODULE;

architecture TOP_MODULE_ARCH of TOP_MODULE is
    component DECODER_NIVEL is
        Port(
            in_decoder_nivel: in std_logic_vector(7 downto 0);
            out1_decoder_nivel: out std_logic_vector(3 downto 0);
            out2_decoder_nivel: out std_logic_vector(7 downto 0)
        );
    end component;

    component DECODER_BCD7S is
        Port(
            in_DECODER_BCD7S: in std_logic_vector(3 downto 0);
            out_DECODER_BCD7S: out std_logic_vector(6 downto 0);
            an: out std_logic
        );
    end component;

    component BLOCK_PWM is
        Port(
            in_PWM: in std_logic_vector(7 downto 0);
            clk: in std_logic;
            out_PWM: out std_logic
        );
    end component;

   signal cable1: std_logic_vector(3 downto 0);
   signal cable2: std_logic_vector(7 downto 0);
begin
    U0: DECODER_NIVEL port map(
        in_decoder_nivel => in_TOP_MODULE,
        out1_decoder_nivel => cable1,
        out2_decoder_nivel => cable2
    );

    U1: DECODER_BCD7S port map(
        in_DECODER_BCD7S => cable1,
        out_DECODER_BCD7S => LED,
        an => an
    );

    U2: BLOCK_PWM port map(
        in_PWM => cable2,
        clk => clk,
        out_PWM => PWM
    );
end TOP_MODULE_ARCH;