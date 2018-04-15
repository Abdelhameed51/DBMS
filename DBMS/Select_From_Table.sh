#!/bin/bash

echo "enter Table Name"
read fileName4

while [ ! -f $fileName4 ]
do  
echo "this table not exist , try agian" 
read fileName4
done

echo "enter data which will be selected"
read pattern
#while [ ! "$(awk -F","  ''/$pattern/'{ print $0}' $fileName4)" ]
while [ ! $(grep -w $pattern $fileName4) ]
do
echo "not exist , try again!"
read pattern
done
if [ $(grep -w $pattern $fileName4) ]
then
echo $(awk -F","  ''/$pattern/'{ print $0}' $fileName4)
#echo $( sed -i "/\<$pattern\>/p" $fileName4)
echo "done!"
fi
