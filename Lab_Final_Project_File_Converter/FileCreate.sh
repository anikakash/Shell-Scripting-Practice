echo "how many file need to creat?"
read number
for ((i=1; i<=number; i++))
	do
	  touch "File${i}.txt"
done

for files in *.txt;
	do
	   echo ${files};
done


echo "Those file are created"	
echo "Anik Dash Akash -> Creator of the script"
