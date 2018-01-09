echo off

if exist czmq\bin\Win32\Debug\v140\ (
	xcopy libzmq\bin\Win32\Debug\v140\dynamic\*.* ..\bin\Win32\Debug\ /V/S/E/Y
	xcopy libzmq\bin\Win32\Release\v140\dynamic\*.* ..\bin\Win32\Release\ /V/S/E/Y
	xcopy libzmq\bin\x64\Debug\v140\dynamic\*.* ..\bin\x64\Debug\ /V/S/E/Y
	xcopy libzmq\bin\x64\Release\v140\dynamic\*.* ..\bin\x64\Release\ /V/S/E/Y
)

if exist libzmq\bin\Win32\Debug\v141\ (
	xcopy libzmq\bin\Win32\Debug\v141\dynamic\*.* ..\bin\Win32\Debug\ /V/S/E/Y
	xcopy libzmq\bin\Win32\Release\v141\dynamic\*.* ..\bin\Win32\Release\ /V/S/E/Y
	xcopy libzmq\bin\x64\Debug\v141\dynamic\*.* ..\bin\x64\Debug\ /V/S/E/Y
	xcopy libzmq\bin\x64\Release\v141\dynamic\*.* ..\bin\x64\Release\ /V/S/E/Y
)

xcopy libzmq\include\*.* ..\include\ /V/S/E/Y
