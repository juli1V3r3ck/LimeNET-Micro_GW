	component lms_dsp is
		port (
			clk_clk                          : in  std_logic                     := 'X';             -- clk
			fir_avs_sink_data                : in  std_logic_vector(23 downto 0) := (others => 'X'); -- data
			fir_avs_sink_valid               : in  std_logic                     := 'X';             -- valid
			fir_avs_sink_error               : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- error
			reset_reset_n                    : in  std_logic                     := 'X';             -- reset_n
			preamble_detect_avs_source_data  : out std_logic_vector(23 downto 0);                    -- data
			preamble_detect_avs_source_valid : out std_logic                                         -- valid
		);
	end component lms_dsp;

	u0 : component lms_dsp
		port map (
			clk_clk                          => CONNECTED_TO_clk_clk,                          --                        clk.clk
			fir_avs_sink_data                => CONNECTED_TO_fir_avs_sink_data,                --               fir_avs_sink.data
			fir_avs_sink_valid               => CONNECTED_TO_fir_avs_sink_valid,               --                           .valid
			fir_avs_sink_error               => CONNECTED_TO_fir_avs_sink_error,               --                           .error
			reset_reset_n                    => CONNECTED_TO_reset_reset_n,                    --                      reset.reset_n
			preamble_detect_avs_source_data  => CONNECTED_TO_preamble_detect_avs_source_data,  -- preamble_detect_avs_source.data
			preamble_detect_avs_source_valid => CONNECTED_TO_preamble_detect_avs_source_valid  --                           .valid
		);

