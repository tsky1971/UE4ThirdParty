echo off

echo "lz4"
if not exist lz4 (

	git clone https://github.com/lz4/lz4.git
	pushd lz4
	
	mkdir build64 &	pushd build64
	
	cmake -G "Visual Studio 15 2017 Win64" -DBUILD_SHARED_LIBS=ON -DBUILD_STATIC_LIBS=ON ..\contrib\cmake_unofficial
	popd
	
	popd
	
) else (

	echo "exists already"
	pushd lz4
	
	if not exist build64 (
		mkdir build64
	)
	
	git pull
	
	pushd build64	
	cmake -G "Visual Studio 15 2017 Win64" -DBUILD_SHARED_LIBS=ON -DBUILD_STATIC_LIBS=ON ..\contrib\cmake_unofficial
	popd
	
	popd
)

pause
rem -DBUILD_SHARED_LIBS=ON -DBUILD_STATIC_LIBS=ON