echo off
echo "build libjpeg-turbo"

if not exist libjpeg-turbo (
	echo "you should get it first"	
	
) else (
	pushd libjpeg-turbo
	
	mkdir build32 & pushd build32
	cmake -G "Visual Studio 15 2017" ..
	popd

	mkdir build64 & pushd build64
	cmake -G "Visual Studio 15 2017 Win64" ..
	popd
	
	cmake --build build32 --config Release
	cmake --build build64 --config Release
	
	popd	
)

pause