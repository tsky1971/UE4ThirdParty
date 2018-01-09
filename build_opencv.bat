echo off
echo "build opencv"

if not exist opencv (
	echo "you should get it first"
	
) else (
	cd opencv
	
	if not exist build32 (
		mkdir build32
	)
	cd build32
		
	cmake -G "Visual Studio 15 2017" ..
	cd ..

	if not exist build64 (
		mkdir build64
	)
	cd build64
	cmake -G "Visual Studio 15 2017 Win64" ..
	cd ..

	cmake --build build64 --config Release
	cmake --build build32 --config Release
)