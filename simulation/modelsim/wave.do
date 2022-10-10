onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /kodas1/CLK
add wave -noupdate /kodas1/SignalIn
add wave -noupdate /kodas1/SignalOut
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {1 ns}
view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue U -period 100ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/kodas1/CLK 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/kodas1/SignalIn 
wave create -driver freeze -pattern clock -initialvalue 0 -period 400ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/kodas1/SignalIn 
WaveCollapseAll -1
wave clipboard restore
