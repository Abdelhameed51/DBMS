#!/bin/bash

echo "enter Table Name"
read fileName3

while [ ! -f $fileName3 ]
do
echo "this table not exist , try agian"
read fileName3
done

echo "enter data's ID which you want to Update"
typeset -i id 
read id
while [ ! $(grep -w "$id" $fileName3) ]
do
echo "ID not exist , try again!"
read id
done

echo -e "\n"
echo $(awk -F"," 'NR==1{print $0}' $fileName3)
echo $(awk -F"," ''/$id/'{ print $0}' $fileName3)
echo "enter the old field that you want to update "
read old
while [ ! $(grep -w "$old" $fileName3) ]
do
echo "data not exist , try again!"
read old
done

echo "enter new field "
read new
while [ $(grep -w "$old" $fileName3) ]
do
sed -i "s/\b$old\b/$new/g" $fileName3
break
done

