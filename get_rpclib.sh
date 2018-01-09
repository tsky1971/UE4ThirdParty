#!/bin/sh

echo "get rpclib"
if [ ! -d rpclib ]
then 
	git clone https://github.com/rpclib/rpclib.git
	cd rpclib
	mkdir build
	cd build
	cmake ..
	make -j4
	sudo make install
	cd -
else
	echo "exists already"
	cd rpclib
	git pull
	cd build
	cmake ..	
	make -j4
	sudo make install
	cd -
fi

