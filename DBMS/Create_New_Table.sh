#!/bin/bash

echo "enter Table Name"
read fileName1

while [ -f $fileName1 ]
do
echo "this table already exist , try agian"
read fileName1
done

touch $fileName1
while [ -f $fileName1 ]
do
echo "enter the fields separated by comma"
read fields
echo $fields > $fileName1

echo "creation is done"
break
done

