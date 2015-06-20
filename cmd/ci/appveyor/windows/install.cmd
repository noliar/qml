@echo off
set PKG_CONFIG_PATH=%QTDIR%\lib\pkgconfig
set CPATH=%QTDIR%\include;%MINGW%\include
set LIBRARY_PATH=%QTDIR%\lib;%MINGW%\lib
IF NOT exist "C:\ProgramData\chocolatey\lib\pkgconfiglite.%PKGCONFIGLITE_VERSION%\*.*" (echo pkgconfiglite not installed, so install it & cinst pkgconfiglite -version %PKGCONFIGLITE_VERSION%) ELSE (echo pkgconfiglite already installed)
:: IF "%Platform%" == "x64" (IF NOT exist "C:\tools\mingw64\*.*" (echo MinGW-w64 not installed, so install it & cinst mingw -version %MINGW_VERSION%) ELSE (echo MinGW-w64 already installed))
set PATH=%GOROOT%\bin;%QTDIR%\bin;%MINGW%\bin;%PATH%