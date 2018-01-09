echo off

pushd libsodium\builds\msvc\build
buildall.bat
::CALL buildbase.bat ..\vs2017\libsodium.sln 15
::CALL buildbase.bat ..\vs2015\libsodium.sln 14
::cd ..\..\..\..
popd
