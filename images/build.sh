spark_dirs=$(ls -d */)

for i in $spark_dirs 
do
	echo "====================building $i============================"
	cd $i
	./build.sh
	cd ..
done
