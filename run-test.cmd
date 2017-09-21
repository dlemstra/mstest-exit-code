@echo off

call "VsDevCmd.cmd"

msbuild mstest-exit-code.sln /p:Configuration=Debug

set vstest="%VSINSTALLDIR%\Common7\IDE\Extensions\TestPlatform\vstest.console.exe"

%vstest% UnitTestProject\bin\Debug\UnitTestProject.dll /framework:.NETFramework,Version=v4.6 /platform:x64 /Diag:diag.txt

echo %vstest%
echo "ERRORLEVEL=%ERRORLEVEL%"
pause