#!/bin/sh

echo "get msgpack-c"
if [ ! -d msgpack-c ]
then 
	git clone https://github.com/msgpack/msgpack-c.git

	cd msgpack-c
	mkdir build
	cd build
	cmake -DMSGPACK_CXX11=ON ..
	make -j4
	sudo make install
	cd -
else
	echo "exists already"
	cd msgpack-c
	git pull
	cd build
	cmake -DMSGPACK_CXX11=ON ..	
	make -j4
	sudo make install
	cd -
fi

