@echo off

call "VsDevCmd.cmd"

msbuild mstest-exit-code.sln /p:Configuration=Debug

set vstest="%VSINSTALLDIR%\Common7\IDE\Extensions\TestPlatform\vstest.console.exe"

%vstest% UnitTestProject\bin\Debug\UnitTestProject.dll /TestAdapterPath:UnitTestProject\bin\Debug

echo %vstest%
echo "ERRORLEVEL=%ERRORLEVEL%"
pause