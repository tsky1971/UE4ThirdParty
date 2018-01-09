echo off

if exist czmq\bin\Win32\Debug\v140\ (
	xcopy czmq\bin\Win32\Debug\v140\dynamic\*.* ..\bin\Win32\Debug\ /V/S/E/Y
	xcopy czmq\bin\Win32\Release\v140\dynamic\*.* ..\bin\Win32\Release\ /V/S/E/Y
	xcopy czmq\bin\x64\Debug\v140\dynamic\*.* ..\bin\x64\Debug\ /V/S/E/Y
	xcopy czmq\bin\x64\Release\v140\dynamic\*.* ..\bin\x64\Release\ /V/S/E/Y
) 

if exist czmq\bin\Win32\Debug\v141\ (
	xcopy czmq\bin\Win32\Debug\v141\dynamic\*.* ..\bin\Win32\Debug\ /V/S/E/Y
	xcopy czmq\bin\Win32\Release\v141\dynamic\*.* ..\bin\Win32\Release\ /V/S/E/Y
	xcopy czmq\bin\x64\Debug\v141\dynamic\*.* ..\bin\x64\Debug\ /V/S/E/Y
	xcopy czmq\bin\x64\Release\v141\dynamic\*.* ..\bin\x64\Release\ /V/S/E/Y
)

xcopy czmq\include\*.* ..\include\ /V/S/E/Y
