echo "libsodium"
if not exist libsodium (
	git clone git://github.com/jedisct1/libsodium.git
	git checkout stable
	popd
) else (
	echo "libsodium exists already"
	pushd libsodium
	git checkout stable
	git pull
	popd
)
