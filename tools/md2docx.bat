@echo off
set inifile=%~dp0ptsm.ini

for /f "delims=" %%a in ('call ini.bat %inifile% /s folders /i outpath') do (
    set outpath=%%a
)

set arg1=%1
set filename=%arg1:~0,-3%
pandoc -o %filename%.docx -t docx -f markdown %1
move "%filename%.docx" "%outpath%"

echo Your .docx file is here: %outpath%%filename%.docx
