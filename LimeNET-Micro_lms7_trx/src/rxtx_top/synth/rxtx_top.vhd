   -- ----------------------------------------------------------------------------
-- FILE:          rxtx_top.vhd
-- DESCRIPTION:   Top wrapper file for RX and TX components
-- DATE:          9:47 AM Thursday, May 10, 2018
-- AUTHOR(s):     Lime Microsystems
-- REVISIONS:
-- ----------------------------------------------------------------------------

-- ----------------------------------------------------------------------------
--NOTES:
-- ----------------------------------------------------------------------------
-- altera vhdl_input_version vhdl_2008
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.fpgacfg_pkg.all;
use work.tstcfg_pkg.all;

-- ----------------------------------------------------------------------------
-- Entity declaration
-- ----------------------------------------------------------------------------
entity rxtx_top is
   generic(
      DEV_FAMILY              : string := "Cyclone IV E";
      -- TX parameters
      TX_IQ_WIDTH             : integer := 12;
      TX_N_BUFF               : integer := 4; -- 2,4 valid values
      TX_IN_PCT_SIZE          : integer := 4096; -- TX packet size in bytes
      TX_IN_PCT_HDR_SIZE      : integer := 16;
      TX_IN_PCT_DATA_W        : integer := 128;
      TX_IN_PCT_RDUSEDW_W     : integer := 11;
      TX_OUT_PCT_DATA_W       : integer := 64;
      
      -- RX parameters
      RX_IQ_WIDTH             : integer := 12;
      RX_INVERT_INPUT_CLOCKS  : string := "OFF";
      RX_SMPL_BUFF_RDUSEDW_W  : integer := 11; --bus width in bits 
      RX_PCT_BUFF_WRUSEDW_W   : integer := 12  --bus width in bits 
      
   );
   port (
      -- Configuration memory ports     
      from_fpgacfg            : in     t_FROM_FPGACFG;
      to_tstcfg_from_rxtx     : out    t_TO_TSTCFG_FROM_RXTX;
      from_tstcfg             : in     t_FROM_TSTCFG;
      -- TX path
      tx_clk                  : in     std_logic;
      tx_clk_reset_n          : in     std_logic;    
      tx_pct_loss_flg         : out    std_logic;
      tx_txant_en             : out    std_logic := '0';  
         -- Tx interface data 
      tx_DIQ                  : out    std_logic_vector(TX_IQ_WIDTH-1 downto 0) := (TX_IQ_WIDTH-1 downto 0 => '0');
      tx_fsync                : out    std_logic := '0';
      
      -- RX path
      rx_clk                  : in     std_logic;
      rx_clk_reset_n          : in     std_logic;
         --Rx interface data 
      rx_DIQ                  : in     std_logic_vector(RX_IQ_WIDTH-1 downto 0);
      rx_fsync                : in     std_logic;
         --Packet fifo ports
      rx_pct_fifo_aclrn_req   : out    std_logic;
      rx_pct_fifo_wusedw      : in     std_logic_vector(RX_PCT_BUFF_WRUSEDW_W-1 downto 0);
      rx_pct_fifo_wrreq       : out    std_logic;
      rx_pct_fifo_wdata       : out    std_logic_vector(63 downto 0);
         --sample compare
      rx_smpl_cmp_start       : in     std_logic;
      rx_smpl_cmp_length      : in     std_logic_vector(15 downto 0);
      rx_smpl_cmp_done        : out    std_logic;
      rx_smpl_cmp_err         : out    std_logic      
      );
end rxtx_top;

-- ----------------------------------------------------------------------------
-- Architecture
-- ----------------------------------------------------------------------------
architecture arch of rxtx_top is
--declare signals,  components here

--inst5
signal inst5_smpl_nr_cnt         : std_logic_vector(63 downto 0);
signal inst5_pct_hdr_cap         : std_logic;

begin
   -- Reset signal for inst0 with synchronous removal to rx_clk clock domain, 
   sync_reg1 : entity work.sync_reg 
   port map(rx_clk, from_fpgacfg.rx_en, '1', rx_pct_fifo_aclrn_req);
   
-- ----------------------------------------------------------------------------
-- rx_path_top instance instance.
-- 
-- ----------------------------------------------------------------------------   
   rx_path_top_inst5 : entity work.rx_path_top
   generic map( 
      dev_family           => DEV_FAMILY,
      iq_width             => RX_IQ_WIDTH,
      invert_input_clocks  => RX_INVERT_INPUT_CLOCKS,
      smpl_buff_rdusedw_w  => 11, 
      pct_buff_wrusedw_w   => RX_PCT_BUFF_WRUSEDW_W
   )
   port map(
      clk                  => rx_clk,
      reset_n              => from_fpgacfg.rx_en,
      test_ptrn_en         => from_fpgacfg.rx_ptrn_en,
      --Mode settings
      sample_width         => from_fpgacfg.smpl_width, --"10"-12bit, "01"-14bit, "00"-16bit;
      mode                 => from_fpgacfg.mode,       -- JESD207: 1; TRXIQ: 0
      trxiqpulse           => from_fpgacfg.trxiq_pulse, -- trxiqpulse on: 1; trxiqpulse off: 0
      ddr_en               => from_fpgacfg.ddr_en,     -- DDR: 1; SDR: 0
      mimo_en              => from_fpgacfg.mimo_int_en,    -- SISO: 1; MIMO: 0
      ch_en                => from_fpgacfg.ch_en(1 downto 0),      --"01" - Ch. A, "10" - Ch. B, "11" - Ch. A and Ch. B. 
      fidm                 => '0',       -- Frame start at fsync = 0, when 0. Frame start at fsync = 1, when 1.
      --Rx interface data 
      DIQ                  => rx_DIQ,
      fsync                => rx_fsync,
      --samples
      smpl_fifo_wrreq_out  => open,
      --Packet fifo ports 
      pct_fifo_wusedw      => rx_pct_fifo_wusedw,
      pct_fifo_wrreq       => rx_pct_fifo_wrreq,
      pct_fifo_wdata       => rx_pct_fifo_wdata,
      pct_hdr_cap          => inst5_pct_hdr_cap,
      --sample nr
      clr_smpl_nr          => from_fpgacfg.smpl_nr_clr,
      ld_smpl_nr           => '0',
      smpl_nr_in           => (others=>'0'),
      smpl_nr_cnt          => inst5_smpl_nr_cnt,
      --flag control
      tx_pct_loss          => '0',
      tx_pct_loss_clr      => from_fpgacfg.txpct_loss_clr,
      --sample compare
      smpl_cmp_start       => rx_smpl_cmp_start,
      smpl_cmp_length      => rx_smpl_cmp_length,
      smpl_cmp_done        => rx_smpl_cmp_done,
      smpl_cmp_err         => rx_smpl_cmp_err
   );
   
-- ----------------------------------------------------------------------------
-- Output ports 
-- ---------------------------------------------------------------------------- 
  
   
  
end arch;   


