echo off

xcopy flatbuffers\build64\Release ..\ThirdParty\flatbuffers\bin\x64\Release\ /V/S/E/D
xcopy flatbuffers\include ..\ThirdParty\flatbuffers\include\ /V/S/E/D

copy flatbuffers_Build_cs ..\ThirdParty\flatbuffers\flatbuffers.Build.cs
copy flatbuffers_tps ..\ThirdParty\flatbuffers\flatbuffers.tps
