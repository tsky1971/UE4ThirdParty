#!/bin/sh

# Build, check, and install libsodium
if [ ! -d libsodium ]
then 
	git clone git://github.com/jedisct1/libsodium.git
	cd libsodium
	./autogen.sh 
	./configure && make check 
	sudo make install 
	sudo ldconfig
	cd -
else
	echo "exists already"
	cd libsodium
	git pull
	./autogen.sh 
	./configure && make check 
	sudo make install 
	sudo ldconfig
	cd -
fi

