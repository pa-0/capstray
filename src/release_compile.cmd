rem todo : create makefile

set PATH=C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Tools\MSVC\14.16.27023\bin\Hostx86\x86;C:\Program Files (x86)\Windows Kits\10\bin\10.0.17763.0\x86;%PATH%
set INCLUDE=C:\Users\lvov_k\github\capstray\win32xx\Win32++\include;C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Tools\MSVC\14.16.27023\include;C:\Program Files (x86)\Windows Kits\10\Include\10.0.17763.0\shared;C:\Program Files (x86)\Windows Kits\10\Include\10.0.17763.0\ucrt;C:\Program Files (x86)\Windows Kits\10\Include\10.0.17763.0\um
set LIB=C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Tools\MSVC\14.16.27023\lib;C:\Program Files (x86)\Windows Kits\10\Lib\10.0.17763.0\um\x86

if not exist Release md Release

cl.exe /MD /O2 /Oi /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_VC80_UPGRADE=0x0710" /D "_UNICODE" /D "UNICODE" /EHsc /Fo"Release\\" /W3 /nologo /c /TP /errorReport:none main.cpp MainApp.cpp StdAfx.cpp View.cpp
rc.exe /d "_VC80_UPGRADE=0x0710" /d "_UNICODE" /d "UNICODE" /fo"Release/Resource.res" .\Resource.rc
