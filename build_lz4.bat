
echo "lz4"

pushd lz4

git pull

pushd build64
cmake -G "Visual Studio 15 2017 Win64"  -Wno-dev ..
popd

cmake --build build64 --config Release

popd


