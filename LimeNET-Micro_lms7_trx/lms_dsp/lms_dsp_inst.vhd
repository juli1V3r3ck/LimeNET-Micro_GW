	component lms_dsp is
		port (
			clk_clk         : in  std_logic                     := 'X';             -- clk
			fifo_in_wdata   : in  std_logic_vector(47 downto 0) := (others => 'X'); -- wdata
			fifo_in_wrreq   : in  std_logic                     := 'X';             -- wrreq
			fifo_out_wrdata : out std_logic_vector(47 downto 0);                    -- wrdata
			fifo_out_wrreq  : out std_logic;                                        -- wrreq
			reset_reset_n   : in  std_logic                     := 'X';             -- reset_n
			dsp_en_en       : in  std_logic                     := 'X'              -- en
		);
	end component lms_dsp;

	u0 : component lms_dsp
		port map (
			clk_clk         => CONNECTED_TO_clk_clk,         --      clk.clk
			fifo_in_wdata   => CONNECTED_TO_fifo_in_wdata,   --  fifo_in.wdata
			fifo_in_wrreq   => CONNECTED_TO_fifo_in_wrreq,   --         .wrreq
			fifo_out_wrdata => CONNECTED_TO_fifo_out_wrdata, -- fifo_out.wrdata
			fifo_out_wrreq  => CONNECTED_TO_fifo_out_wrreq,  --         .wrreq
			reset_reset_n   => CONNECTED_TO_reset_reset_n,   --    reset.reset_n
			dsp_en_en       => CONNECTED_TO_dsp_en_en        --   dsp_en.en
		);

