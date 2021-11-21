vsim work.tb_fir
view wave
#add wave * --> no more necessary since I'm calling .do file
do wave_config.do
run
