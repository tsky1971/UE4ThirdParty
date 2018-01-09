
echo "cppzmq"
if not exist cppzmq (
	git clone https://github.com/zeromq/cppzmq.git
	pushd cppzmq
	rem xcopy *.hpp ..\..\..\Binaries\Win64
	popd
) else (
	echo "cppzmq exists already"
	pushd cppzmq
	git pull
	rem xcopy /y *.hpp ..\..\cglabdepends_win\include\
	popd
)