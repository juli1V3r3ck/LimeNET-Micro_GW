onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group dut /rxiq_tb/dut/clk
add wave -noupdate -expand -group dut /rxiq_tb/dut/reset_n
add wave -noupdate -expand -group dut /rxiq_tb/en_iq_sel
add wave -noupdate -expand -group dut -radix hexadecimal /rxiq_tb/dut/DIQ_h
add wave -noupdate -expand -group dut -radix hexadecimal /rxiq_tb/dut/DIQ_l
add wave -noupdate -expand -group dut /rxiq_tb/dut/fifo_wfull
add wave -noupdate -expand -group dut /rxiq_tb/dut/fifo_wrreq
add wave -noupdate -expand -group dut -radix hexadecimal /rxiq_tb/dut/fifo_wdata
add wave -noupdate -expand -group dut -group internals /rxiq_tb/dut/inst0_fifo_wrreq
add wave -noupdate -expand -group dut -group internals -radix hexadecimal /rxiq_tb/dut/inst0_fifo_wdata
add wave -noupdate -expand -group dut -group internals /rxiq_tb/dut/inst0_reset_n
add wave -noupdate -expand -group dut -group internals /rxiq_tb/dut/inst1_fifo_wrreq
add wave -noupdate -expand -group dut -group internals -radix hexadecimal /rxiq_tb/dut/inst1_fifo_wdata
add wave -noupdate -expand -group dut -group internals /rxiq_tb/dut/inst1_reset_n
add wave -noupdate -expand -group dut -group internals /rxiq_tb/dut/mux_fifo_wrreq
add wave -noupdate -expand -group dut -group internals -radix hexadecimal /rxiq_tb/dut/mux_fifo_wdata
add wave -noupdate -expand -group dut -group internals /rxiq_tb/dut/fifo_wrreq_reg
add wave -noupdate -expand -group dut -group internals -radix hexadecimal /rxiq_tb/dut/fifo_wdata_reg
add wave -noupdate -expand -group sido_sdr /rxiq_tb/dut/inst0_rxiq_siso/rxiq_siso_sdr_inst0/clk
add wave -noupdate -expand -group sido_sdr /rxiq_tb/dut/inst0_rxiq_siso/rxiq_siso_sdr_inst0/reset_n
add wave -noupdate -expand -group sido_sdr /rxiq_tb/dut/inst0_rxiq_siso/rxiq_siso_sdr_inst0/fidm
add wave -noupdate -expand -group sido_sdr -radix hexadecimal /rxiq_tb/dut/inst0_rxiq_siso/rxiq_siso_sdr_inst0/DIQ_h
add wave -noupdate -expand -group sido_sdr -radix hexadecimal /rxiq_tb/dut/inst0_rxiq_siso/rxiq_siso_sdr_inst0/DIQ_l
add wave -noupdate -expand -group sido_sdr /rxiq_tb/dut/inst0_rxiq_siso/rxiq_siso_sdr_inst0/fifo_wfull
add wave -noupdate -expand -group sido_sdr /rxiq_tb/dut/inst0_rxiq_siso/rxiq_siso_sdr_inst0/fifo_wrreq
add wave -noupdate -expand -group sido_sdr -radix hexadecimal /rxiq_tb/dut/inst0_rxiq_siso/rxiq_siso_sdr_inst0/fifo_wdata
add wave -noupdate -expand -group sido_sdr -group internals -radix hexadecimal /rxiq_tb/dut/inst0_rxiq_siso/rxiq_siso_sdr_inst0/sdr_reg_0
add wave -noupdate -expand -group sido_sdr -group internals -radix hexadecimal /rxiq_tb/dut/inst0_rxiq_siso/rxiq_siso_sdr_inst0/diq_pos0_reg
add wave -noupdate -expand -group sido_sdr -group internals -radix hexadecimal /rxiq_tb/dut/inst0_rxiq_siso/rxiq_siso_sdr_inst0/diq_pos1_reg
add wave -noupdate -expand -group sido_sdr -group internals -radix hexadecimal /rxiq_tb/dut/inst0_rxiq_siso/rxiq_siso_sdr_inst0/diq_pos2_reg
add wave -noupdate -expand -group sido_sdr -group internals -radix hexadecimal /rxiq_tb/dut/inst0_rxiq_siso/rxiq_siso_sdr_inst0/diq_pos3_reg
add wave -noupdate -expand -group sido_sdr -group internals /rxiq_tb/dut/inst0_rxiq_siso/rxiq_siso_sdr_inst0/diq_pos0_cap_en
add wave -noupdate -expand -group sido_sdr -group internals /rxiq_tb/dut/inst0_rxiq_siso/rxiq_siso_sdr_inst0/diq_pos1_cap_en
add wave -noupdate -expand -group sido_sdr -group internals /rxiq_tb/dut/inst0_rxiq_siso/rxiq_siso_sdr_inst0/diq_pos2_cap_en
add wave -noupdate -expand -group sido_sdr -group internals /rxiq_tb/dut/inst0_rxiq_siso/rxiq_siso_sdr_inst0/diq_pos3_cap_en
add wave -noupdate -expand -group sido_sdr -group internals /rxiq_tb/dut/inst0_rxiq_siso/rxiq_siso_sdr_inst0/sdr_diq_valid
add wave -noupdate -expand -group sido_sdr -group internals /rxiq_tb/dut/inst0_rxiq_siso/rxiq_siso_sdr_inst0/sdr_fifo_data
add wave -noupdate -expand -group sido_sdr -group internals /rxiq_tb/dut/inst0_rxiq_siso/rxiq_siso_sdr_inst0/sdr_fifo_data_valid
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2213 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {18500 ps} {20500 ps}
