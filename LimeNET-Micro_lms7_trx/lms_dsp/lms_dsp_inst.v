	lms_dsp u0 (
		.clk_clk         (<connected-to-clk_clk>),         //      clk.clk
		.fifo_in_wdata   (<connected-to-fifo_in_wdata>),   //  fifo_in.wdata
		.fifo_in_wrreq   (<connected-to-fifo_in_wrreq>),   //         .wrreq
		.fifo_out_wrdata (<connected-to-fifo_out_wrdata>), // fifo_out.wrdata
		.fifo_out_wrreq  (<connected-to-fifo_out_wrreq>),  //         .wrreq
		.reset_reset_n   (<connected-to-reset_reset_n>),   //    reset.reset_n
		.dsp_en_en       (<connected-to-dsp_en_en>)        //   dsp_en.en
	);

