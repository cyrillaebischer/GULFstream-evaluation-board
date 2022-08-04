----------------------------------------------------------------------------------
-- Company: 
-- Engineer: CYRILL AEBISCHER
-- 
-- Create Date: 01.07.2022 11:00:28
-- Design Name: 
-- Module Name: eval_top - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity eval_fw is
    Port (
        clk_i   : in std_logic;
        clk_div_i : in std_logic;
        rst_i : in std_logic;
        start_i : in std_logic;
        data_in_p  : in std_logic;
        data_in_n  : in std_logic;
        
        aligned_o : out std_logic;
        data_wr_out : out std_logic_vector(31 downto 0);
        wr_en_out : out std_logic;
        addr_wr_out : out std_logic_vector(6 downto 0);
        wr_ro_out : out std_logic_vector(31 downto 0);
        err_code_out : out std_logic_vector(1 downto 0)
         );
end;

architecture Behavioral of eval_fw is
    
    -- Input signals 
    signal data_in_s : std_logic;
    
    -- OUTPUT SIGNALS
    signal data_wr_out_s :  std_logic_vector(31 downto 0);
    signal addr_wr_out_s :  std_logic_vector(6 downto 0);

    -- global signals
    signal glb_error_s : std_logic;
    signal hdr_bit_s : std_logic;
    signal rst_clkdiv: std_logic;

    -- shiftregister signal
    signal shiftreg_s : std_logic_vector(9 downto 0);
    
    -- byte lock signals
    signal locked_reg_o : std_logic_vector(9 downto 0);
    signal aligned_s    : std_logic;
    signal comma_s      : std_logic;
    signal rst_o_s      : std_logic;
  
    -- decoder signals
    signal disp_s       : std_logic;
    signal data8b_s     : std_logic_vector(7 downto 0);
    signal DataK_out_s, rxCodeErr, rxDispErr  : std_logic;
    
    -- data packed signals
    signal word_pack_s  : std_logic_vector(31 downto 0);
    signal word_output_s: std_logic;
    signal word_cnt_s   : std_logic_vector(1 downto 0);
    signal valid_s      : std_logic;                                                                          
    signal wr_en_s      : std_logic;
    signal hdr_bit_err  : std_logic;
    
    -- Coarse Time Roll Over
    signal ro_counter_s : std_logic_vector(31 downto 0);
    signal CT_counter_s : std_logic_vector(15 downto 0);
    
    -- start process detection
    signal proc_start_s : std_logic;
    signal d_in_mem : std_logic;
    
    -- BEGIN COMPONENT DECLARATIONS --
    
    component sipo is
        port(
            clk_i :in std_logic;
            rst_i :in std_logic;
            data_i :in std_logic;
            data_o :out std_logic_vector(9 downto 0)
            );
        end component;
    
    component sync_statemachine is
        port(
            reg_i : in std_logic_vector(9 downto 0);
            clk_i : in std_logic;
            rst_i : in std_logic;  
            err_i : in std_logic;      
            reg_o : out std_logic_vector(9 downto 0);
            aligned_o : out std_logic;
            comma_o : out std_logic
            );
       end component;
       
    component data_wr_fsm is
       Port (
            rst_i : in std_logic;
            clk_i : in std_logic;
            valid_i : in std_logic;
            wr_data_in : in std_logic_vector(31 downto 0);
            ro_cnt_in : in std_logic_vector(31 downto 0);
            wr_data_out : out std_logic_vector(31 downto 0);
            wr_en_o: out std_logic;
            wr_adr_o : out std_logic_vector(6 downto 0);
            ro_cnt_out : out std_logic_vector(31 downto 0));
   end component;

begin

    -- Start Signal Control ----
    start_proc: process(clk_i)
    begin 
        if rising_edge(clk_i) then
            if rst_i = '1' then
                proc_start_s <= '0';
            elsif start_i = '1' then
                proc_start_s <= '1';
            end if;
        end if;
    end process;
            
    ---- shiftregister ----
    shift_reg: sipo
        port map( 
            clk_i => clk_i,
            rst_i => rst_i,
            data_i => data_in_s,
            data_o => shiftreg_s
            ); 
                        
    ---- comma / alignement ----
    commalink: sync_statemachine
        port map(
            reg_i => shiftreg_s,
            clk_i => clk_i, 
            rst_i => rst_i,
            err_i => glb_error_s,
            reg_o => locked_reg_o,
            aligned_o => aligned_s,
            comma_o => comma_s
        );
        
    ---- Decode ----        
    U_Decode8b10b : entity work.Decode8b10b 
          generic map (
             GATE_DELAY_G => 1 ns
          )
          port map (
             clk      => clk_i, 
             rst      => rst_i,
             dataIn   => locked_reg_o,
             dispIn   => disp_s,
             dataOut  => data8b_s,
             dataKOut => DataK_out_s,
             dispOut  => disp_s,
             codeErr  => rxCodeErr,
             dispErr  => rxDispErr
          );
          
    ---- synchronous output ----    
      adr_fsm: data_wr_fsm
             Port map (
                 rst_i    => rst_i,
                 clk_i    => clk_div_i,
                 valid_i  => word_output_s,
                 wr_data_in => word_pack_s,
                 ro_cnt_in => ro_counter_s,
                 wr_data_out => data_wr_out_s,
                 wr_en_o  => wr_en_s,
                 wr_adr_o => addr_wr_out_s,
                 ro_cnt_out => wr_ro_out
             ); 

    ---- Input Buffer ----
    IBUFDS_inst_data : IBUFDS
        generic map (
         DIFF_TERM => FALSE, -- Differential Termination
         IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
         IOSTANDARD => "DEFAULT")
        port map (
         O => data_in_s, -- Buffer output
         I => data_in_p, -- Diff_p buffer input (connect directly to top-level port)
         IB => data_in_n -- Diff_n buffer input (connect directly to top-level port)
        );
          

        ---- word packaging process ----
    word_pack: process(clk_div_i)
        variable word_cnt_v : unsigned(1 downto 0) := "00";
        begin
             
            if rising_edge(clk_div_i) then
                if (comma_s = '0') and (aligned_s = '1') then
                        case word_cnt_v is
                            when "00" =>
                                if data8b_s(7) = '1' then
                                    hdr_bit_s <= '1';
                                    word_pack_s(31 downto 24) <= data8b_s; 
                                    word_cnt_v := word_cnt_v +1;
                                else
                                    hdr_bit_s <= '0';
                                end if;
                                    word_output_s <= '0';
                            when "01" =>
                                word_pack_s(23 downto 16) <= data8b_s; 
                                word_cnt_v := word_cnt_v +1;
                            when "10" =>
                                word_pack_s(15 downto 8) <= data8b_s; 
                                word_cnt_v := word_cnt_v +1;
                            when "11" =>
                                word_pack_s(7 downto 0) <= data8b_s; 
                                word_cnt_v := word_cnt_v +1;
                                word_output_s <= '1';
                            when others =>
                            
                        end case;
                    else
                        word_cnt_v := "00";
                        word_output_s <= '0';
                        word_pack_s <= (others => '0');
                        hdr_bit_s <= '1';
                    end if;  
            end if;
            word_cnt_s <= std_logic_vector(word_cnt_v);
        end process;
    
    ---- Error detecting ----
    hdr_bit_err <= '1' when (word_cnt_s = "00" and hdr_bit_s = '0' and aligned_s = '1') else '0';
    glb_error_s <= '1' when (hdr_bit_err = '1') or (rxCodeErr = '1') else '0';
    -- write error code on output
    err_code_out(0) <= '1' when hdr_bit_err = '1' else '0';
    err_code_out(1) <= '1' when rxCodeErr = '1' else '0';
    
    ---- Validate memory write ----
    valid_s <= word_output_s and (not rxCodeErr);                                                    
    
    ---- Coarse Time / Rollover counter ----
    rst_clkdiv <= not(aligned_s);
    
    rollover: process(clk_div_i, rst_clkdiv)
                       variable CT_counter : unsigned(15 downto 0) := x"FF5D";          -- x"FF00" initialization only for Test purposes,
                                                                                        -- real initialization: x"0000"
                       variable RO_counter : unsigned(31 downto 0) := x"00000000";      
                       begin  
                           if rst_clkdiv = '1' then
                               CT_counter := x"FF5D";           -- CT_counter := (others => '0');
                               RO_counter := (others=> '0');                                                      
                           elsif rising_edge(clk_div_i) then
                           
                               if proc_start_s = '1' then
                                   CT_counter := CT_counter + 1;
                                   if CT_counter = x"FFFF" then
                                       RO_counter := RO_counter + 1;
                                       CT_counter := (others => '0');
                                   end if;
                               -- else
                                   -- CT_counter := (others => '0');   --comment for test purposes
                               end if;
                           end if;
                       CT_counter_s <= std_logic_vector(CT_counter);
                       RO_counter_s <= std_logic_vector(RO_counter);
                       end process;
                       
    ---- Output Logic ----
    data_wr_out <= data_wr_out_s;
    addr_wr_out <= addr_wr_out_s;
    wr_en_out <= wr_en_s when (aligned_s = '1') else '0';
    aligned_o <= aligned_s;
    
end Behavioral;
