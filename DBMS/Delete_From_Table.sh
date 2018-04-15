#!/bin/bash

echo "enter Table Name" 
read fileName5

while [ ! -f $fileName5 ]
do  
echo "this table not exist , try agian"
read fileName5 
done

echo "enter data which will be deleted"
read pattern2
#if grep -Fx $pattern "$fileName5"
while [ ! $(grep -w $pattern2 $fileName5) ]
do
echo "not exist , try again!"
read pattern2
done

sed -i ''/$pattern2/'d' $fileName5
echo "deletion done!" 

