@echo off

REM Here we use robocopy for backing up files and folders of the ptsm to some git repository folder
REM (that's why we copy certain files and folders and don't mirror source folder to the destination - in this case hidden .git folder will be purged)
REM https://docs.microsoft.com/ru-ru/windows-server/administration/windows-commands/robocopy - manual from MS
REM https://superuser.com/questions/814102/robocopy-command-to-do-an-incremental-backup - exact source of command below
REM FOR /FFT also see https://social.technet.microsoft.com/wiki/contents/articles/1073.robocopy-and-a-few-examples.aspx - #6
REM https://www.techrepublic.com/article/how-to-quickly-back-up-just-your-data-in-windows-10-with-robocopys-multi-threaded-feature/
REM /R = RETRIES; /W=WAIT BETWEEN RETRIES (seconds, default=30);
REM /Z ensures Robocopy can resume the transfer of a large file in mid-file instead of restarting.
REM /XA:H makes Robocopy ignore hidden files, usually these will be system files that we're not interested in.
REM /ndl Specifies that directory names are not to be logged.
REM /np Specifies that the progress of the copying operation (the number of files or directories copied so far) will not be displayed.

REM Getting paths from ptsm.ini

set inifile=%~dp0ptsm.ini

for /f "delims=" %%a in ('call ini.bat %inifile% /s folders /i ptsmlocal') do (
    set ptsmlocal=%%a
)

for /f "delims=" %%a in ('call ini.bat %inifile% /s folders /i ptsmgit') do (
    set ptsmgit=%%a
)

REM Backing up folders
robocopy %ptsmlocal%.vscode %ptsmgit%.vscode /MIR /FFT /R:3 /W:10 /Z /NP /NDL
robocopy %ptsmlocal%licenses %ptsmgit%licenses /MIR /FFT /R:3 /W:10 /Z /NP /NDL
robocopy %ptsmlocal%notes %ptsmgit%notes /MIR /FFT /R:3 /W:10 /Z /NP /NDL
robocopy %ptsmlocal%tools %ptsmgit%tools /MIR /FFT /R:3 /W:10 /Z /NP /NDL

REM Backing up files
robocopy %ptsmlocal% %ptsmgit% *.md /FFT /R:3 /W:10 /Z /NP /NDL
robocopy %ptsmlocal% %ptsmgit% me.code-workspace /FFT /R:3 /W:10 /Z /NP /NDL

cd %ptsmgit%
git add * && git commit -m "sync @ %date%-%time%" && git push origin master

cd %ptsmlocal%
