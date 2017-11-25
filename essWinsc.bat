@echo off
set path0=%PATH%
set PATH=%path0%;C:\Program Files\WinSCP
call :ssh %1 %2>%tmp%\x.txt
winscp<%tmp%\x.txt
goto fin
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:ssh
echo open @%1:22
echo root
echo ingenico
echo cd %2
echo ls -l
echo close
echo exit
goto :EOF
echo TestGit

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:fin
set PATH=%path0%
