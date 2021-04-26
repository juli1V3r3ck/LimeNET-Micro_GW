	lms_dsp u0 (
		.clk_clk                          (<connected-to-clk_clk>),                          //                        clk.clk
		.fir_avs_sink_data                (<connected-to-fir_avs_sink_data>),                //               fir_avs_sink.data
		.fir_avs_sink_valid               (<connected-to-fir_avs_sink_valid>),               //                           .valid
		.fir_avs_sink_error               (<connected-to-fir_avs_sink_error>),               //                           .error
		.reset_reset_n                    (<connected-to-reset_reset_n>),                    //                      reset.reset_n
		.preamble_detect_avs_source_data  (<connected-to-preamble_detect_avs_source_data>),  // preamble_detect_avs_source.data
		.preamble_detect_avs_source_valid (<connected-to-preamble_detect_avs_source_valid>)  //                           .valid
	);

