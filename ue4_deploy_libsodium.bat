echo off

xcopy libsodium\src\libsodium\include\*.* ..\ThirdParty\libsodium\include\ /V/S/E/Y

xcopy libsodium\bin\*.* ..\ThirdParty\libsodium\ /V/S/E/Y
xcopy libsodium\bin\*.* ..\..\Binaries\ThirdParty\libsodium\ /V/S/E/Y

copy libsodium_Build_cs ..\ThirdParty\libsodium\libsodium.Build.cs
copy libsodium_tps ..\ThirdParty\libsodium\libsodium.tps