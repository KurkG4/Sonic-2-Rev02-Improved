@echo off

IF EXIST s2built.bin move /Y s2built.bin s2built.prev.bin >NUL
Build_Source\asm68k  /k /p /o ae- Sonic2CL.asm, s2built.bin >errors.txt, ,Sonic2CL.lst
Build_Source\fixheadr s2built.bin
pause