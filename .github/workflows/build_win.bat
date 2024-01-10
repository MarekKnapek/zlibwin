@echo on
if "%~1"=="x86" goto x86
if "%~1"=="x64" goto x64
goto :eof
:x86
cd "%~dp0..\.."
git clone https://github.com/madler/zlib.git
cd "%~dp0..\..\32-release"
call "%~dp0..\..\32-release\build-32-release.bat"
copy "%~dp0..\..\32-release\zlib1.dll" "%~dp0..\..\zlib1-x86.dll"
copy "%~dp0..\..\32-release\zlib1.exp" "%~dp0..\..\zlib1-x86.exp"
copy "%~dp0..\..\32-release\zlib1.lib" "%~dp0..\..\zlib1-x86.lib"
copy "%~dp0..\..\32-release\zlib1.pdb" "%~dp0..\..\zlib1-x86.pdb"
goto :eof
:x64
cd "%~dp0..\.."
git clone https://github.com/madler/zlib.git
cd "%~dp0..\..\64-release"
call "%~dp0..\..\64-release\build-64-release.bat"
copy "%~dp0..\..\64-release\zlib1.dll" "%~dp0..\..\zlib1-x64.dll"
copy "%~dp0..\..\64-release\zlib1.exp" "%~dp0..\..\zlib1-x64.exp"
copy "%~dp0..\..\64-release\zlib1.lib" "%~dp0..\..\zlib1-x64.lib"
copy "%~dp0..\..\64-release\zlib1.pdb" "%~dp0..\..\zlib1-x64.pdb"
goto :eof
