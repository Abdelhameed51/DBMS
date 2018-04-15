#!/bin/bash

echo "enter Table Name"
read fileName6

while [ ! -f $fileName6 ]
do  
echo "this table not exist , try agian" 
read fileName6
done

rm $fileName6
echo "drop was done"

