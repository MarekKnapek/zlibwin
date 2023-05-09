@echo off
call "c:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars64.bat"
rc.exe /nologo /DWIN32 /D_WINDLL "..\..\zlib\win32\zlib1.rc"
cl.exe ^
 /nologo ^
 /I"..\..\zlib" ^
 /Zi ^
 /O2 ^
 /Ob2 ^
 /Oy- ^
 /GL ^
 /DWIN32 ^
 /D_WINDLL ^
 /GF ^
 /Gm- ^
 /MT ^
 /GS- ^
 /Gy ^
 /fp:precise ^
 /Zc:wchar_t ^
 /Zc:inline ^
 /Gd ^
 /Fd"zlib1.pdb" ^
 /TC ^
 "..\..\zlib\adler32.c" ^
 "..\..\zlib\compress.c" ^
 "..\..\zlib\crc32.c" ^
 "..\..\zlib\deflate.c" ^
 "..\..\zlib\gzclose.c" ^
 "..\..\zlib\gzlib.c" ^
 "..\..\zlib\gzread.c" ^
 "..\..\zlib\gzwrite.c" ^
 "..\..\zlib\infback.c" ^
 "..\..\zlib\inffast.c" ^
 "..\..\zlib\inflate.c" ^
 "..\..\zlib\inftrees.c" ^
 "..\..\zlib\trees.c" ^
 "..\..\zlib\uncompr.c" ^
 "..\..\zlib\zutil.c" ^
 "..\..\zlib\contrib\minizip\ioapi.c" ^
 "..\..\zlib\contrib\minizip\iowin32.c" ^
 "..\..\zlib\contrib\minizip\unzip.c" ^
 "..\..\zlib\contrib\minizip\zip.c" ^
 /link ^
 /DLL ^
 /OUT:"zlib1.dll" ^
 /IMPLIB:"zlib1.lib" ^
 /DEBUG ^
 /INCREMENTAL:NO ^
 /SUBSYSTEM:WINDOWS ^
 /LTCG ^
 /DYNAMICBASE ^
 /MACHINE:X64 ^
 /DEF:"..\..\zlib\win32\zlib.def" ^
 /PDB:"zlib1.pdb" ^
"..\..\zlib\win32\zlib1.res"
