#!/bin/sh


if [ ! -d libzmq ]
then 
	git clone https://github.com/zeromq/libzmq.git

	#cd ../dependencies/libzmq 
	#mkdir build && cd build
	#cmake .. && make -j 4

	cd libzmq
	./autogen.sh 
	./configure --with-libsodium && make
	sudo make install
	sudo ldconfig
	cd -
else
	echo "exists already"
	cd libzmq
	git pull
	./autogen.sh 
	./configure --with-libsodium && make
	sudo make install
	sudo ldconfig
	cd -
fi

