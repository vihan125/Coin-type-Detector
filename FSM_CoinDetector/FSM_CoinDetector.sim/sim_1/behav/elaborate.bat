@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.3\\bin
call %xv_path%/xelab  -wto 36e359f985f6474cb984bc6643865b64 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot testBench_behav xil_defaultlib.testBench -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
