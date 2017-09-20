@echo off

call "VsDevCmd.cmd"

msbuild mstest-exit-code.sln /p:Configuration=Debug

vstest.console UnitTestProject\bin\Debug\UnitTestProject.dll

where vstest.console
echo "ERRORLEVEL=%ERRORLEVEL%"
pause