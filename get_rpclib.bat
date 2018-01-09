
echo "rpclib"
if not exist rpclib (

	git clone https://github.com/rpclib/rpclib.git
	pushd rpclib
	
	mkdir build32 & pushd build32
	cmake -G "Visual Studio 15 2017" ..
	popd

	mkdir build64 & pushd build64
	cmake -G "Visual Studio 15 2017 Win64" ..
	popd
	
	popd
	
) else (

	echo "exists already"
	pushd rpclib
	
	git pull
	
	pushd build32
	cmake -G "Visual Studio 15 2017" ..
	popd
	
	pushd build64
	cmake -G "Visual Studio 15 2017 Win64" ..
	popd
	
	popd
)


