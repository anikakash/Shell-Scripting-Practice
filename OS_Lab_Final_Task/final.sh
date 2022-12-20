for (( i=10; i<=30; i+=5))
do
	if [ `expr $i % 10` == 0 ]
	  then
			echo $i
	fi
done
