
module lms_dsp (
	clk_clk,
	fifo_in_wdata,
	fifo_in_wrreq,
	fifo_out_wrdata,
	fifo_out_wrreq,
	reset_reset_n,
	dsp_en_en);	

	input		clk_clk;
	input	[47:0]	fifo_in_wdata;
	input		fifo_in_wrreq;
	output	[47:0]	fifo_out_wrdata;
	output		fifo_out_wrreq;
	input		reset_reset_n;
	input		dsp_en_en;
endmodule
