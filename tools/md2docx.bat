echo off
set arg1=%1
set filename=%arg1:~0,-3%
pandoc -o %filename%.docx -t docx -f markdown %1