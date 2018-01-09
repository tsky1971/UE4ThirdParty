echo off

xcopy cppzmq\*.h* ..\ThirdParty\cppzmq\ /V/S/E/Y

copy cppzmq_Build_cs ..\ThirdParty\cppzmq\cppzmq.Build.cs
copy cppzmq_tps ..\ThirdParty\cppzmq\cppzmq.tps
