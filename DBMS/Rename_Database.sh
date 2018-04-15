#!/bin/bash

echo "enter name of DB : "
read dbName2
while [ ! -d "$dbName2" ] #check db not existing
do
echo "this Database not exist!"
echo "please enter name again : "
read dbName2
done
echo "enter new name : "
read new
mv $dbName2 $new
while [ -d "$new" ] #check db existing
do
echo "renaming is done "
break
done

