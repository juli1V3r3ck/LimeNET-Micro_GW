// preamble_detect.v

// This file was auto-generated as a prototype implementation of a module
// created in component editor.  It ties off all outputs to ground and
// ignores all inputs.  It needs to be edited to make it do something
// useful.
// 
// This file will not be automatically regenerated.  You should check it in
// to your version control system if you want to keep it.

`timescale 1 ps / 1 ps
module preamble_detect (
		input  wire        clock_sink_clk,                //              clock_sink.clk
		input  wire        reset_sink_reset,              //              reset_sink.reset
		input  wire [23:0] avalon_streaming_sink_data,    //   avalon_streaming_sink.data
		input  wire        avalon_streaming_sink_valid,   //                        .valid
		output wire [23:0] avalon_streaming_source_data,  // avalon_streaming_source.data
		output wire        avalon_streaming_source_valid  //                        .valid
	);

	reg [23:0] avs_src_data_reg;
	reg avs_src_valid_reg;

	always @(posedge clock_sink_clk) begin
		if (reset_sink_reset) begin
			avs_src_data_reg  <= 'b0;
			avs_src_valid_reg <= 'b0;
		end
		else begin
			avs_src_data_reg  <= avalon_streaming_sink_data;
			avs_src_valid_reg <= avalon_streaming_sink_valid;
		end
	end

	assign avalon_streaming_source_valid = avs_src_valid_reg;

	assign avalon_streaming_source_data = avs_src_data_reg;

endmodule
