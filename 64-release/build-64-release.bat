@echo off
"c:\Program Files (x86)\Microsoft Visual Studio\2017\BuildTools\VC\Auxiliary\Build\vcvars64.bat"
rc.exe /nologo /DWIN32 /D_WINDLL "..\..\..\win32\zlib1.rc"
cl.exe /nologo /I"..\..\.." /Zi /O2 /Ob2 /Oy- /GL /DWIN32 /D_WINDLL /GF /Gm- /MT /GS- /Gy /fp:precise /Zc:wchar_t /Zc:inline /Gd /Fd"zlib1.pdb" /TC "..\..\..\adler32.c" "..\..\..\compress.c" "..\..\..\crc32.c" "..\..\..\deflate.c" "..\..\..\gzclose.c" "..\..\..\gzlib.c" "..\..\..\gzread.c" "..\..\..\gzwrite.c" "..\..\..\infback.c" "..\..\..\inffast.c" "..\..\..\inflate.c" "..\..\..\inftrees.c" "..\..\..\trees.c" "..\..\..\uncompr.c" "..\..\..\zutil.c" "..\..\..\contrib\minizip\ioapi.c" "..\..\..\contrib\minizip\iowin32.c" "..\..\..\contrib\minizip\unzip.c" "..\..\..\contrib\minizip\zip.c" /link /DLL /OUT:"zlib1.dll" /IMPLIB:"zlib1.lib" /DEBUG /INCREMENTAL:NO /SUBSYSTEM:WINDOWS /LTCG /DYNAMICBASE /MACHINE:X64 /DEF:"..\..\..\win32\zlib.def" /PDB:"zlib1.pdb" "..\..\..\win32\zlib1.res"
