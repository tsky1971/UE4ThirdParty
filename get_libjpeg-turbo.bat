echo off

echo "get libjpeg-turbo"
echo "get NASM http://www.nasm.us/pub/nasm/releasebuilds/2.13.02/win64/nasm-2.13.02-installer-x64.exe"

wget http://www.nasm.us/pub/nasm/releasebuilds/2.13.02/win64/nasm-2.13.02-installer-x64.exe

if not exist libjpeg-turbo (
	git clone https://github.com/libjpeg-turbo/libjpeg-turbo.git

	pushd libjpeg-turbo

	mkdir build32 & pushd build32
	cmake -G "Visual Studio 14 2015" ..
	popd

	mkdir build64 & pushd build64
	cmake -G "Visual Studio 14 2015 Win64" ..
	popd
	
) else (
	pushd libjpeg-turbo
	
	git pull

	mkdir build32 & pushd build32
	cmake -G "Visual Studio 14 2015" ..
	popd

	mkdir build64 & pushd build64
	cmake -G "Visual Studio 14 2015 Win64" ..
	popd
	
)

