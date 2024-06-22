onerror {resume}
quietly set dataset_list [list wave_CM_test wave_UART_test_no_config]
if {[catch {datasetcheck $dataset_list}]} {abort}
quietly WaveActivateNextPane {} 0
add wave -noupdate wave_CM_test:/testbench_CM/CM_DUT/clk
add wave -noupdate wave_CM_test:/testbench_CM/CM_DUT/rst_n
add wave -noupdate -divider <NULL>
add wave -noupdate wave_CM_test:/testbench_CM/CM_DUT/Empty
add wave -noupdate wave_CM_test:/testbench_CM/CM_DUT/RXD_Data
add wave -noupdate -divider <NULL>
add wave -noupdate wave_CM_test:/testbench_CM/CM_DUT/Vertical_Split
add wave -noupdate wave_CM_test:/testbench_CM/CM_DUT/Horizontal_Split
add wave -noupdate wave_CM_test:/testbench_CM/CM_DUT/VGA_debug
add wave -noupdate -divider <NULL>
add wave -noupdate wave_CM_test:/testbench_CM/CM_DUT/HSync
add wave -noupdate wave_CM_test:/testbench_CM/CM_DUT/VSync
add wave -noupdate -divider <NULL>
add wave -noupdate wave_CM_test:/testbench_CM/CM_DUT/c_ready
add wave -noupdate wave_CM_test:/testbench_CM/CM_DUT/c_addr
add wave -noupdate wave_CM_test:/testbench_CM/CM_DUT/c_data
add wave -noupdate wave_CM_test:/testbench_CM/CM_DUT/c_valid
add wave -noupdate -divider <NULL>
add wave -noupdate wave_CM_test:/testbench_CM/CM_DUT/Config_Status
add wave -noupdate -divider <NULL>
add wave -noupdate wave_CM_test:/testbench_CM/CM_DUT/Config_Notification
add wave -noupdate wave_CM_test:/testbench_CM/CM_DUT/Config_Notification_Valid
add wave -noupdate -divider <NULL>
add wave -noupdate wave_CM_test:/testbench_CM/CM_DUT/Config_Error
add wave -noupdate wave_CM_test:/testbench_CM/CM_DUT/Error_Valid
add wave -noupdate -divider <NULL>
add wave -noupdate wave_CM_test:/testbench_CM/CM_DUT/VGA_Notification
add wave -noupdate wave_CM_test:/testbench_CM/CM_DUT/VGA_Notification_Valid
add wave -noupdate -divider <NULL>
add wave -noupdate wave_CM_test:/testbench_CM/CM_DUT/Data_VGA
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
quietly wave cursor active 0
configure wave -namecolwidth 337
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {1192 ns}
