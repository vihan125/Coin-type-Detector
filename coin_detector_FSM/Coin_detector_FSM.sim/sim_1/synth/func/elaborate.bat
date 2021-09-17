@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.3\\bin
call %xv_path%/xelab  -wto dfb0eebcd4d6473e9a05700fef0aa01c -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot testBench_func_synth xil_defaultlib.testBench -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
