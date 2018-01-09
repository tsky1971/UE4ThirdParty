echo off

echo "msgpack-c"
if not exist msgpack-c (

	git clone https://github.com/msgpack/msgpack-c.git
	pushd msgpack-c
	
	mkdir build32 & pushd build32
	cmake -G "Visual Studio 15 2017" ..
	popd

	mkdir build64 & pushd build64
	cmake -G "Visual Studio 15 2017 Win64" ..
	popd
	
	popd
	
) else (

	echo "exists already"
	pushd msgpack-c
	
	git pull
	
	pushd build32
	cmake -G "Visual Studio 15 2017" ..
	popd
	
	pushd build64
	cmake -G "Visual Studio 15 2017 Win64" ..
	popd
	
	popd
)


