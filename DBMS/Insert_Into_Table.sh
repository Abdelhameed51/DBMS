#!/bin/bash

echo "enter Table Name"
read fileName2
    
while [ ! -f $fileName2 ]
do
echo "this table not exist , try agian" 
read fileName2 
done
    
echo "enter the data separated by comma"
awk -F"," 'NR==1{print $0}' $fileName2
read data
echo $data >> $fileName2
echo "Data was added"

