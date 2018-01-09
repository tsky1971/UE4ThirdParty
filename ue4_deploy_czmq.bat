echo off

xcopy czmq\bin\*.* ..\..\Binaries\ThirdParty\czmq\ /V/S/E/Y

xcopy czmq\bin\*.* ..\ThirdParty\czmq\ /V/S/E/Y

xcopy czmq\include\*.* ..\ThirdParty\czmq\include\ /V/S/E/Y

copy czmq_Build_cs ..\ThirdParty\czmq\czmq.Build.cs
copy czmq_tps ..\ThirdParty\czmq\czmq.tps