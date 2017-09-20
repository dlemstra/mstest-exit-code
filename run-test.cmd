@echo off

call "VsDevCmd.cmd"

msbuild mstest-exit-code.sln /p:Configuration=Debug

mstest /testcontainer:UnitTestProject\bin\Debug\UnitTestProject.dll

where mstest
echo "ERRORLEVEL=%ERRORLEVEL%"
pause