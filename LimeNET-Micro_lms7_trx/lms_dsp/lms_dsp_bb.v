
module lms_dsp (
	clk_clk,
	fir_avs_sink_data,
	fir_avs_sink_valid,
	fir_avs_sink_error,
	reset_reset_n,
	preamble_detect_avs_source_data,
	preamble_detect_avs_source_valid);	

	input		clk_clk;
	input	[23:0]	fir_avs_sink_data;
	input		fir_avs_sink_valid;
	input	[1:0]	fir_avs_sink_error;
	input		reset_reset_n;
	output	[23:0]	preamble_detect_avs_source_data;
	output		preamble_detect_avs_source_valid;
endmodule
