@echo off
set VER=%1
if "%VER%" == "32" set LIBVER=86
if "%VER%" == "64" set LIBVER=64
set "VSROOT=D:\Program Files"
set "WDKLIBVER=10.0.22621.0"
set "BUILDTOOLSPATH=%VSROOT%\Microsoft Visual Studio\2022\BuildTools"
set "WDKROOT=%VSROOT%\Windows Kits\10"
set "WDKLIB=%WDKROOT%\Lib\%WDKLIBVER%"
call "%BUILDTOOLSPATH%\VC\Auxiliary\Build\vcvars%VER%.bat"
set "INCLUDE=%WDKROOT%\Include\%WDKLIBVER%\ucrt;%INCLUDE%"
set "LIB=%WDKLIB%\ucrt\x%LIBVER%;%WDKLIB%\um\x%LIBVER%;%LIB%"