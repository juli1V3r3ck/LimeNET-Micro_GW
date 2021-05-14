
`timescale 1ps/1ps

module rxiq_tb();

	localparam iq_width = 12;
	localparam CLOCK_PERIOD = 200;

	reg clk, clk2, reset_n, trxiqpulse, ddr_en, mimo_en, fidm, fifo_wfull, en_iq_sel;
	reg [1:0] ch_en;

	wire fifo_wrreq;
	wire [iq_width-1:0] di, dq;
	wire [iq_width:0] DIQ_h, DIQ_l;
	wire [4*iq_width-1:0] fifo_wdata;

	reg [iq_width-1:0] cnt;

	assign DIQ_h = {en_iq_sel, di};
	assign DIQ_l = {~en_iq_sel, dq};
	assign di = cnt;
	assign dq = cnt+'d1;

	rxiq #(.dev_family(""),.iq_width(iq_width)) dut(.clk(clk),.reset_n(reset_n),.trxiqpulse(trxiqpulse),.ddr_en(ddr_en),.mimo_en(mimo_en),.ch_en(ch_en),.fidm(fidm),.DIQ_h(DIQ_h),.DIQ_l(DIQ_l),.fifo_wfull(fifo_wfull),.fifo_wrreq(fifo_wrreq),.fifo_wdata(fifo_wdata));

	initial begin
		clk = 1'b0;
		clk2 = 1'b0;
		reset_n = 1'b0;
		trxiqpulse = 1'b0;
		mimo_en = 1'b0;
		ddr_en = 1'b1;
		ch_en = 2'b01;
		fidm = 1'b0;
		fifo_wfull = 1'b0;

		#(2*CLOCK_PERIOD);
		reset_n = 1'b1;

		#(100*CLOCK_PERIOD);

		$finish;

	end

	always begin
		clk <= ~clk; #(CLOCK_PERIOD / 2);
	end

	assign en_iq_sel = 1'b0;

	always @(posedge clk) begin
		clk2 <= ~clk2;
	end

	always @(posedge clk) begin
		if (~reset_n) cnt <= 'b0;
		else cnt <= cnt + 'd2;
	end

endmodule;
