----------------------------------------------------------------------------------
-- Company: ID-Lab at University of Hawaii at Manoa
-- Engineer: Cyrill Aebischer
-- 
-- Create Date: 28.06.2022 14:05:21
-- Design Name: 
-- Module Name: shiftregsynch_tb - Behavioral
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
use IEEE.STD_LOGIC_textio.ALL;
use STD.textio.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity shiftregsynch_top is
    port(
        data_wr_out : out std_logic_vector(31 downto 0);
        addr_wr_out : out std_logic_vector(5 downto 0);
        wr_en_out   : out std_logic;
        wr_ro_out : out std_logic_vector(31 downto 0);
        err_code_out : out std_logic_vector(1 downto 0)
    );   
end shiftregsynch_top;

architecture Behavioral of shiftregsynch_top is

    -- clock and TB signals
    constant clk_i_period : time := 0.78 ns;  -- 1/127 = 7.8740157
    signal clk_i, clk_div: std_logic;
    signal start_test   : std_logic := '0';
    signal rst_clkdiv, rst_i : std_logic;
    
    -- global signals
    signal glb_error_s  : std_logic; 
        
    -- Coarse Time Roll Over
    signal ro_counter_s : std_logic_vector(31 downto 0);
    signal CT_counter_s : std_logic_vector(15 downto 0);
    
    -- Deserializer and Locking
    signal bit_in_s : std_logic := '0';
    signal shiftreg_s: std_logic_vector(9 downto 0);
    signal locked_sig_o : std_logic_vector(9 downto 0);
    signal synched_s, comma_s, rst_o_s    : std_logic;
    
    -- Decoder
    signal data8b_s     : std_logic_vector(7 downto 0);
    signal disp_s, DataK_out_s, rxCodeErr, rxDispErr  : std_logic;
    
    -- Data Extraction
    signal word_pack_s  : std_logic_vector(31 downto 0);
    signal word_output_s : std_logic;
    signal word_cnt_s   : std_logic_vector(1 downto 0);
    signal valid_s      : std_logic;                                                                        
    signal wr_en_s      : std_logic;     
    signal rst_fsm_s    : std_logic;   
    signal hdr_bit_s : std_logic; --for header check, error if 0 in first byte    
    signal hdr_bit_err : std_logic;
    
     
       -------------------------------------------                                                     
    -- ¦ err_code_out(0) : Header Bit Error      ¦
    -- ¦ err_code_out(1) : Decoder Code Error    ¦
       -------------------------------------------
    ---------------------------------------------------------------------------------
    -- BEGIN COMPONENT DECLARATIONS --
    component Clock_Divider is
        port (
            clk  : in std_logic;
            reset: in std_logic;
            clock_out: out std_logic);
    end component;
        
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
            rst_o   : out std_logic;
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
                wr_adr_o : out std_logic_vector(5 downto 0);
                ro_cnt_out : out std_logic_vector(31 downto 0));
       end component;
       
       COMPONENT blk_mem_gen_0
         PORT (
           clka : IN STD_LOGIC;
           addra : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
           douta : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
         );
       END COMPONENT;
        
begin
    
    ---- shiftregister ----
    shift_reg: sipo
        port map( 
            clk_i => clk_i,
            rst_i => rst_i,
            data_i => bit_in_s,
            data_o =>shiftreg_s
            ); 
            
            
    ---- comma / locking ----
    commalink: sync_statemachine
        port map(
            reg_i => shiftreg_s,
            clk_i => clk_i,
            rst_i => rst_i,
            err_i => glb_error_s,
            reg_o => locked_sig_o,
            aligned_o => synched_s,
            rst_o   => rst_o_s,
            comma_o => comma_s
        );

    
    U_Decode8b10b : entity work.Decode8b10b 
          generic map (
             GATE_DELAY_G => 1 ns
          )
          port map (
             clk      => clk_i,
             rst      => rst_i,
             dataIn   => locked_sig_o,
             dispIn   => disp_s,
             dataOut  => data8b_s,
             dataKOut => DataK_out_s,
             dispOut  => disp_s,
             codeErr  => rxCodeErr,
             dispErr  => rxDispErr
          );

    ---- Bit read in process ----
    rd_values: process(clk_i)
        
        file fp_output : text is in "C:\Users\Cyrill\Documents\S6\BA-GULFstream\shiftRegSynch_v2\sim_files\runTot.dat"; --sim_files\
        variable ln_r     : line;
        variable x : std_logic;
        
        variable stop          : boolean := false;
        begin 
            if start_test = '1' then  
                if (rising_Edge(clk_i))then
                    if stop = false then
                                readline(fp_output,ln_r);
                                read(ln_r,x);
                                bit_in_s <= x;
                                if endfile(fp_output) = true then
                                    stop := true;    
                                end if;
                    end if;
                else
                    bit_in_s <= bit_in_s;
                end if;
            end if;
    end process;
    
start_proc: process
    begin
      wait for 40 ns;
      start_test <= '1';
      wait;
    end process;
    
    ---- word packaging process ----
word_pack: process(clk_div)
    variable word_cnt_v : unsigned(1 downto 0) := "00";
    begin
                 if rising_edge(clk_div) then 
                    if (comma_s = '0') and (synched_s = '1') then                   
                        case word_cnt_v is
                            when "00" =>                                                                                --<-- new 21.07.22
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
                            when "11"=>
                                word_pack_s(7 downto 0) <= data8b_s; 
                                word_cnt_v := "00";
                                word_output_s <= '1';
                            when others =>
                                --word_output_s <= '0';
                            
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
    hdr_bit_err <= '1' when (word_cnt_s = "00" and hdr_bit_s = '0' and synched_s = '1') else '0';
    glb_error_s <= '1' when (hdr_bit_err = '1') or (rxCodeErr = '1') else '0'; --and (comma_s = '0')
    
    -- write error code on output
    err_code_out(0) <= '1' when hdr_bit_err = '1' else '0';
    err_code_out(1) <= '1' when rxCodeErr = '1' else '0';
    
    
    ---- Write to Memory FSM ----
    valid_s <= word_output_s and (not rxCodeErr);        
    -- rst_fsm_s <= '1' when (rst_i = '1' or   rxCodeErr = '1' ) else '0';                                          
    wr_en_out <= wr_en_s when (synched_s = '1') else '0';                                              
    
    adr_fsm: data_wr_fsm
               Port map (
                   rst_i    => rst_i,
                   clk_i    => clk_div,
                   valid_i  => word_output_s,
                   wr_data_in => word_pack_s,
                   ro_cnt_in => ro_counter_s,
                   wr_data_out => data_wr_out,
                   wr_en_o  => wr_en_s,
                   wr_adr_o => addr_wr_out,
                   ro_cnt_out => wr_ro_out
                   );                   
        
    rst_clkdiv <= not(synched_s);
    clk_divider: Clock_Divider
        port map(
            clk  => clk_i,
            reset=> rst_clkdiv,
            clock_out => clk_div
            );
            
    
    ---- Coarse Time counter Roll Over Counter ----

            
    rollover: process(clk_div, rst_clkdiv)
        variable CT_counter : unsigned(15 downto 0) := x"FF00";          -- x"FF00" initialization only for Test purposes,
                                                                         -- real initialization: x"0000"
        variable RO_counter : unsigned(31 downto 0) := (others => '0');
        begin 
            if rst_clkdiv = '1' then
                --CT_counter := (others => '0');
                RO_counter := (others => '0');                                                       
            elsif rising_edge(clk_div) then
                if start_test = '1' then
                    CT_counter := CT_counter + 1;
                    if CT_counter = x"FFFF" then
                        --ro_cnt_en <= '1';
                        RO_counter := RO_counter + 1;
                        CT_counter := (others => '0');
                    end if;
                else
                    -- CT_counter := (others => '0');   --comment for test purposes
                end if;
            end if;
        CT_counter_s <= std_logic_vector(CT_counter);
        ro_counter_s <= std_logic_vector(RO_counter);
        end process;
            
                
    ---- clock process ----   
clkX1: process
    begin 
        clk_i <= '0';
        wait for clk_i_period/2;
        clk_i <= '1';
        wait for clk_i_period/2;
    end process;
    
    ---- reset process ----
    reset: process
    begin
        rst_i <= '1';
        wait for 30 ns;
        rst_i <= '0';
       wait;
    end process;


end Behavioral;
