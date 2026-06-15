----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/04/2025 03:28:00 AM
-- Design Name: 
-- Module Name: TB_NOT_GATE1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TB_NOT_GATE1 is
--  Port ( );
end TB_NOT_GATE1;

architecture Behavioral of TB_NOT_GATE1 is

-- Component declaration
    component not_gate
        Port (
            xnorB_not : in  STD_LOGIC;
            notOut    : out STD_LOGIC
        );
    end component;

    -- Signals
    signal xnorB_tb : STD_LOGIC := '0';
    signal notOut_tb : STD_LOGIC;

begin
    -- Instantiate NOT gate
    UUT: not_gate
        Port map (
            xnorB_not => xnorB_tb,
            notOut    => notOut_tb
        );

    -- Test process
    stim_proc: process
    begin
        -- 0 -> 1 -> output should rise
        xnorB_tb <= '0';
        wait for 10 ns;
        xnorB_tb <= '1';
        wait for 10 ns;

        -- 1 -> 0 -> output should fall
        xnorB_tb <= '0';
        wait for 10 ns;

        -- End simulation
        wait;
    end process;





end Behavioral;
