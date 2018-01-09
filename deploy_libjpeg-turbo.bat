echo off

xcopy libjpeg-turbo\include ..\include /V/S/E/Y
xcopy libjpeg-turbo\build64\Release ..\bin\x64\Release /V/S/E
xcopy libjpeg-turbo\build32\Release ..\bin\Win32\Release /V/S/E

pause