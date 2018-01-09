
echo "libzmq"
if not exist libzmq (
	echo "libzmq NOT exist checkout..."
	git clone https://github.com/zeromq/libzmq.git
	pushd libzmq	
	popd
) else (
	echo "libzmq exists already"
	pushd libzmq
	git pull	
	popd
)
