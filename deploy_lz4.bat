echo off

xcopy lz4\lib\*.h ..\include\lz4\ /V/E/Y
xcopy lz4\build64\Release ..\bin\x64\Release /V/S/E

pause