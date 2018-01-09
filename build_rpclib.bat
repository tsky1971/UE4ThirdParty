
echo "rpclib"

pushd rpclib

git pull

pushd build32
cmake -G "Visual Studio 15 2017"  -Wno-dev ..
popd

cmake --build build32 --config Release

pushd build64
cmake -G "Visual Studio 15 2017 Win64"  -Wno-dev ..
popd

cmake --build build64 --config Release

popd


