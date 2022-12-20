creat(){

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

}

delete(){
for f in *.txt;
	do
	   rm ${f};
	 done;
}

pdfTOtxt(){
#!/usr/bin/bash
for f in *.pdf;
	do
	   mv -- "$f" "${f%.pdf}.txt"
	done
}

txtTOpdf(){
#!/usr/bin/bash
for f in *.txt;
	do
	   mv -- "$f" "${f%.txt}.pdf"
	done	
}

echo "---------- WelCome To Our Shell Scripting Based Tools ----------"

while [ true ]
do
echo "1. Want to Create Files?"
echo "2. Want to Convert TXT File To PDF?"
echo "3. Want to Convert PDF File To TXT?"
echo "4. Want to Delete Files?"
echo "Enter Your Choice: "	
read ch

case $ch in 
	1) bash FileCreate.sh;;
	2) bash txtTOpdf.sh;;
	3) bash pdfTOtxt.sh;;
	4) bash FileRemove.sh;;
	*) echo "Wrong Choie"
esac
done

