echo "czmq"
if not exist czmq (
	git clone git://github.com/zeromq/czmq.git
	pushd czmq
	echo "you have to build it manually"
	popd
) else (
	echo "czmq exists already"	
	pushd czmq
	git pull
	echo "you have to build it manually"
	popd
)
