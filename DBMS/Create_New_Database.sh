#!/bin/bash
echo "enter the name of your DB "
read dbName1
while [ -d "$dbName1" ] #check db existing
do
echo "this Database exist!"
echo "please enter name again : "
read dbName1
done

mkdir $dbName1
while [ -d "$dbName1" ] #check db existing
do
echo "creation is done!"
break
done

