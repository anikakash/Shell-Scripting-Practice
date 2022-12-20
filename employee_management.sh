clear
AutoNumber()
{
            local eno=0     
            f=0
            for j in `cat Employee.txt`
            do
                        eno=$(echo "$j" | cut -d "," -f 1)
                        f=1
            done
            if [ $f = 1 ]
            then
                        eno=`expr $eno + 1`
            else
                        eno=1
            fi
            echo $eno
}



Insert()
{
            clear
           
            eno=$1           
            echo "Enter Employee No: $eno"
           
            echo "Enter Employee Name: \c"
            read enm

            echo "Enter Employee Address: \c"
            read eadd
           
            echo "Enter Employee Age : \c"
            read eage

            echo "Enter Employee Gender: \c"
            read egen
           
            echo "Enter Employee Designation : \c"
            read edes


            echo "Enter Employee Basic Salary : \c"
            read ebal

           
            echo "$eno,$enm,$eadd,$eage,$egen,$edes,$ebal,true" >> Employee.txt

            echo "                 Insert Sucessfully                           "

}

Display()
{
            clear
            echo "__________________________________________________"                       
            echo "                              Employee Details "
            echo "__________________________________________________"                       
            echo "__________________________________________________"                       
            echo "#ENO \t ENAME \t\t EADDR \t\t\t EAGE \t EGEN \t EDES \t\t EBAL"    
        
            for j in `cat Employee.txt`
            do
                        eno=$(echo "$j" | cut -d "," -f 1)
                        enm=$(echo "$j" | cut -d "," -f 2)
                        eadd=$(echo "$j" | cut -d "," -f 3)
                        eage=$(echo "$j" | cut -d "," -f 4)
                        egen=$(echo "$j" | cut -d "," -f 5)
                       
                        edes=$(echo "$j" | cut -d "," -f 6)
                        ebal=$(echo "$j" | cut -d "," -f 7)
                        tfval=$(echo "$j" | cut -d "," -f 8)
                        if [ $tfval = "true" ]
                        then
                                  echo "___________________________________________"
                                  echo "$eno \t $enm \t\t $eadd \t\t $eage \t $egen \t $edes \t $ebal"
                        fi
            done   
            echo "__________________________________________________"                       
}

Search()
{
            clear

            echo "Enter Employee NO: \c"
            read no

            echo "__________________________________________________"                       
            echo "                 Employee Details                       "
            echo "__________________________________________________"                       
            flag=0
            for j in `cat Employee.txt`
            do
                        eno=$(echo "$j" | cut -d "," -f 1)
                        enm=$(echo "$j" | cut -d "," -f 2)
                        eadd=$(echo "$j" | cut -d "," -f 3)
                        eage=$(echo "$j" | cut -d "," -f 4)
                        egen=$(echo "$j" | cut -d "," -f 5)
                        edes=$(echo "$j" | cut -d "," -f 6)
                        ebal=$(echo "$j" | cut -d "," -f 7)
                        tfval=$(echo "$j" | cut -d "," -f 8)
                                               
                        if [ $no -eq $eno ] && [ $tfval = "true" ]
                        then
                                    flag=1
                                 echo "________________________________________"                        
                                    echo "  ENo : $eno                      EName : $enm            "  
                                    echo "________________________________________"                        
                                    echo "  EAdd                    :                      $eadd   "
                                    echo "  EAge                    :                      $eage   "
                                    echo "  EGen                    :                      $egen   "
                                    echo "________________________________________"                        
                                    echo "  EDes                    :                      $edes   "
                                    echo "________________________________________"                        
                                    echo "  ESal                      :                      $ebal   "
                                    echo "________________________________________"                        
                        fi
            done
            if [ $flag = 0 ]
            then
                 echo "               No Record Found              "
            fi
            echo "__________________________________________________"                          

}
Delete()
{
            clear
            f=0
            echo "Enter Employee NO: \c"
            read no

            for j in `cat Employee.txt`
            do
                        eno=$(echo "$j" | cut -d "," -f 1)
                        enm=$(echo "$j" | cut -d "," -f 2)
                        eadd=$(echo "$j" | cut -d "," -f 3)
                        eage=$(echo "$j" | cut -d "," -f 4)
                        egen=$(echo "$j" | cut -d "," -f 5)
                        edes=$(echo "$j" | cut -d "," -f 6)
                        ebal=$(echo "$j" | cut -d "," -f 7)
                       
                        if [ $no -eq $eno ]
                        then
                                    f=1                              
                                    line=$(echo "$eno,$enm,$eadd,$eage,$egen,$edes,$ebal,false")
                                    fnm=`cat Employee.txt`
                                    d=$(echo "$fnm" | sed s/$j/$line/g )
                                    echo $d > Employee.txt          
                                    echo "                 Delete Successfully                           "
                        fi
            done
            if [ f = 0 ]
            then
                          echo "               No Record Found              "
            fi
}

Update()
{
            clear

            echo "Enter Employee NO: \c"
            read no


                       
            for j in `cat Employee.txt`
            do
                                                eno=$(echo "$j" | cut -d "," -f 1)
                        enm=$(echo "$j" | cut -d "," -f 2)
                        eadd=$(echo "$j" | cut -d "," -f 3)
                        eage=$(echo "$j" | cut -d "," -f 4)
                        egen=$(echo "$j" | cut -d "," -f 5)
                        edes=$(echo "$j" | cut -d "," -f 6)
                        ebal=$(echo "$j" | cut -d "," -f 7)

                       
                        if [ $no -eq $eno ]
                        then
                                    echo "______________Enter New Record______________"
                                    echo "Enter Employee No: $eno"
           
                                    echo "Enter Employee Name: \c"
                                    read enm

                                    echo "Enter Employee Address: \c"
                                    read eadd
           
                                    echo "Enter Employee Age : \c"
                                    read eage
           
                                    echo "Enter Employee Gender: \c"
                                    read egen
           
                                    echo "Enter Employee Designation : \c"
                                    read edes

                                    echo "Enter Employee Basic Salary : \c"
                                    read ebal

           
                                    line=$(echo "$eno,$enm,$eadd,$eage,$egen,$edes,$ebal,true")

                                    #line=$(echo "$eno,$snm,$m1,$m2,$m3,$total,$per,true")
                                    fnm=`cat Employee.txt`
                                    d=$(echo "$fnm" | sed s/$j/$line/g )
                                    echo $d > Employee.txt          
                                   
                                    echo "                 Update Sucessfully                           "

                        fi
            done
}




while [ true ]
do
echo " _______________________________"
echo " 1. Insert  "
echo " 2. Delete  "
echo " 3. Update  "
echo " 4. Display "
echo " 5. Search  "
echo " 6. Exit    "
echo " _______________________________" 
echo "Enter Choice: \c"
read ch

case $ch in

            1)
               nxtSrNo=$(AutoNumber)
               Insert $nxtSrNo
               ;;
            2) Delete ;;
            3) Update ;;
            4) Display ;;
            5) Search ;;
            6) break;;
            *) echo " Wrong Choice "
esac
done
