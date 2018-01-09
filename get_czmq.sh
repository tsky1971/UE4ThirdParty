#!/bin/sh

if [ -f czmq ]
then 	
	echo "czmq exists already"
	cd czmq
	git pull
	./autogen.sh && ./configure && make check
	sudo make install
	sudo ldconfig
	cd ..
else
	git clone git://github.com/zeromq/czmq.git
	cd czmq
	./autogen.sh && ./configure && make check
	sudo make install
	sudo ldconfig
	cd ..
fi
