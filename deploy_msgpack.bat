echo off

xcopy msgpack-c\include ..\include /V/S/E/Y
xcopy msgpack-c\build64\Release ..\bin\x64\Release /V/S/E
xcopy msgpack-c\build32\Release ..\bin\Win32\Release /V/S/E

pause