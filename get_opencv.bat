echo off
echo "opencv"
if not exist opencv (
	echo "opencv NOT exist checkout..."
	git clone https://github.com/opencv/opencv.git	
	pushd opencv	
	git checkout 2.4
	popd
) else (
	echo "opencv exists already"
	pushd opencv
	git pull	
	popd
)

pause