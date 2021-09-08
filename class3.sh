#! /usr/bin/bash

#taking multiples input

echo "Enter Names : "
read  name1 name2 name3
echo "Names are " $name1 $name2 $name3

#taking input same line 
#for this we need to use '-p' flag
## -sp take hidden input in same line
echo "Enter User Name : "
read -p 'username : ' user_var
read -sp "password : " user_pass
echo "User Name is : "$user_var
echo "User PassWord is : "$user_pass

# practice Array

echo "Enter Books Names: "
read -a books
echo "Books list is : " ${books[0]}, ${books[1]}, ${books[2]}


# take default input without var

echo "Enter Name : "
read
echo "name : " $REPLY
