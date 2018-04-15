#!/bin/bash

echo "enter name of DB : "
read dbName3
while [ ! -d "$dbName3" ] #check db not existing
do
echo "this Database not exist!" 
echo "please enter name again : "
read dbName3
done

rm -r $dbName3
while [ ! -d "$dbName1" ] #check db not exist
do
echo "deletion is done !"
break
done

