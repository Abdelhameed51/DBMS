#!/bin/bash

echo "Press 1 for operations on Databases"
echo "Press 2 for operations on Tables"
echo "press 0 to exit !"
typeset -i choice1
while :
do
read choice1
case $choice1 in 
1)
echo -e "\n1-Create New Database"
echo "2-List existing Database"
echo "3-Rename Database"
echo "4-Delete Database"
echo "5-To return back"

echo "Type the number of your choice : "

typeset -i choice2
while :
do
read choice2 
case $choice2 in
1) #create database 

sh ./Create_New_Database.sh

break 
;;

2) #list existing database
ls -d */
break 
;;

3) #rename database

sh ./Rename_Database.sh

break 
;;

4) #delete DB

sh ./Delete_Database.sh

break 
;;

5)

sh ./DBMS.sh

;;
	
*)
echo "wrong choice , try again"

;;
esac
done

break 
;;

2)
echo -e "\n1-Create New Table"
echo "2-Insert Into Table"
echo "3-Update Table"
echo "4-Select From Table"
echo "5-Delete From Table"
echo "6-Drop Table"

typeset -i choice3
while :
do
read choice3
case $choice3 in
1) #Create New Table

sh ./Create_New_Table.sh

break
;;

2) #insert into table

sh ./Insert_Into_Table.sh

break
;;

3) #Update table

sh ./Update_Table.sh

break
;;


4) #select from table

sh ./Select_From_Table.sh

break
;;

5) #Delete From Table

sh ./Delete_From_Table.sh

break
;;


6) #Drop Table

sh ./Drop_Table.sh

break
;;




*)
echo "wrong choice , try again"
esac
done


break
;;

0)
exit
;;

*)
echo "Wrong choice , try again"
esac
done
