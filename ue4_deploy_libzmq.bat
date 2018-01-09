echo off

xcopy libzmq\bin\*.* ..\..\Binaries\ThirdParty\libzmq\ /V/S/E/Y

xcopy libzmq\bin\*.* ..\ThirdParty\libzmq\ /V/S/E/Y

xcopy libzmq\include\*.* ..\ThirdParty\libzmq\include\ /V/S/E/Y

copy libzmq_Build_cs ..\ThirdParty\libzmq\libzmq.Build.cs
copy libzmq_tps ..\ThirdParty\libzmq\libzmq.tps