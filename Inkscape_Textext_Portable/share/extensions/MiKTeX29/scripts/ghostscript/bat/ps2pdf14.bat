@echo off
@rem $Id: ps2pdf14.bat 11728 2010-09-17 09:27:40Z chrisl $

rem Convert PostScript to PDF 1.4 (Acrobat 5-and-later compatible).

set LIBDIR=%~dp0

echo -dCompatibilityLevel#1.4 >"%TEMP%\_.at"
goto bot

rem Pass arguments through a file to avoid overflowing the command line.
:top
echo %1 >>"%TEMP%\_.at"
shift
:bot
if not %3/==/ goto top
call "%LIBDIR%ps2pdfxx.bat" %1 %2
