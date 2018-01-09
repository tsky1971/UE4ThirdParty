echo off

echo "get flatBuffers"

if not exist flatbuffers (
	git clone https://github.com/google/flatbuffers.git
	pushd flatbuffers
	popd
) else (
	echo "flatbuffers exists already"	
	pushd flatbuffers
	git pull
	popd
)
