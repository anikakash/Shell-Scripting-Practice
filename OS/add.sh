echo "a = "
read a
echo "b = "
read b
add=`echo $a+$b | bc`
sub=`echo $a-$b | bc`
mul=`echo $a*$b | bc`
div=`echo $a/$b | bc`
echo "$a + $b = $add"
echo "$a - $b = $sub"
echo "$a * $b = $mul"
echo "$a / $b = $div"

if [ $a -gt $b ]
then
echo "a > b"
elif [ $a == $b ] 
then
echo "a = b"
else
echo "a < b"
fi

for((i=0;i<5;i++))
do
echo "$i"
done
