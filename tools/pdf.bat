:: --------------------
:: pdf.bat
:: pdf.bat /? for usage
:: --------------------

@echo off
setlocal enabledelayedexpansion

set inifile=%~dp0ptsm.ini

goto begin

:usage
@echo This batch script creates .pdf from .md files and moves it to the specified folder [outpath]
@echo Syntax: %~nx0 yourmdfile.md yourcss.css
@echo.
@echo Please remember:
@echo 1. Css file must be placed in the [csspath] folder
@echo 2. You must set [outpath] and [csspath] variables inside the tools\ptsm.ini file
@echo 3. It won't work without the css file
@echo.
goto :EOF

:begin

if "%~1" == "" goto usage
if "%~1" == "/?" goto usage
if "%~1" == "?" goto usage

chcp 65001

for /f "delims=" %%a in ('call ini.bat %inifile% /s folders /i outpath') do (
    set outpath=%%a
)

for /f "delims=" %%a in ('call ini.bat %inifile% /s folders /i csspath') do (
    set csspath=%%a
)

set arg1=%1
rem md file to be printed to pdf

set arg2=%2
rem css file

set filename=%arg1:~0,-3%
rem getting the filename for md file without its extension

pandoc %arg1% -t html -s --toc -c %csspath%%arg2% --metadata title="%filename%: %date%" -o %filename%_%date%.pdf

move %filename%_%date%.pdf %outpath%
@echo Your .pdf file is here: %outpath%%filename%_%date%.pdf
