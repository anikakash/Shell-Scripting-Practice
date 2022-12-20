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
	*) echo "Wrong Choice"
esac
done

