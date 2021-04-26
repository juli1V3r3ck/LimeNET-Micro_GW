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

	// TODO: Auto-generated HDL template

	assign avalon_streaming_source_valid = 1'b0;

	assign avalon_streaming_source_data = 24'b000000000000000000000000;

endmodule
