read a
read b
sum=$((a+b))
sub=$((a-b))
mul=$((a*b))
echo $sum
echo $sub
echo $mul
echo "scale=2;$a/$b" | bc
