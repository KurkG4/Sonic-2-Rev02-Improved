@echo off
echo Build started...
asm68k /o ae- /p Sonic2Cl.asm,s2built.bin

IF NOT EXIST s2built.bin goto LABLERR
rem rompad s2built.bin 255 0
rem fixheadr.exe s2built.bin

echo Build succeeded

goto LABLDONE

:LABLERR
echo Build failed
pause
:LABLDONE
pause