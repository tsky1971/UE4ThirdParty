echo off
xcopy flatbuffers\build64\Release\*.* ..\bin\x64\Release\ /V/S/E/Y
xcopy flatbuffers\build64\Release\*.* ..\bin\x64\Debug\ /V/S/E/Y
xcopy flatbuffers\build32\Release\*.* ..\bin\Win32\Release\ /V/S/E/Y
xcopy flatbuffers\build32\Release\*.* ..\bin\Win32\Debug\ /V/S/E/Y

xcopy flatbuffers\include\*.* ..\include\ /V/S/E/Y

