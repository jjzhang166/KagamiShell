@echo off
if exist kshell_asv2.exe del kshell_asv2.exe
set cl=
rc /nologo resource.rc
cl -Fekshell_asv2 -O2s -MTd -MP -EHsc -DDEBUG -D_DEBUG -nologo *.cpp *.c -link /MACHINE:X86 resource.res kernel32.lib user32.lib shell32.lib shlwapi.lib advapi32.lib comctl32.lib ws2_32.lib ole32.lib
if %ERRORLEVEL% NEQ 0 pause
if exist *.obj del *.obj
if exist *.res del *.res
if exist *.pch del *.pch

rem if exist kshell_asv2.exe mycodesign kshell_asv2.exe
rem if %ERRORLEVEL% NEQ 0 pause