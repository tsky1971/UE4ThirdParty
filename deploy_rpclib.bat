echo off

xcopy rpclib\include\ ..\include\ /V/S/E/Y
xcopy rpclib\build64\Release ..\bin\x64\Release /V/S/E
xcopy rpclib\build32\Release ..\bin\Win32\Release /V/S/E

pause