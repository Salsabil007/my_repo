#!/bin/bash

: '
echo "add 2 int.."
text=`expr 1 + 2`
echo "1 + 2 = " $text

echo "enter 2 int.."
read x
read y 
echo "$x + $y = " `expr $x + $y`


echo "check even/odd"
read x
read y 
rem=`expr $x % 2`
rem1=`expr $y % 2`
if [[ ($rem = 0 && $rem1 != 0) || ($rem != 0 && $rem1 = 0) ]]
then echo "yes"
else echo "no"
fi 


count=1
while [ $count -le 5 ]
do
echo $count
count=$((count + 1))
done
echo "Finished."

cnt=0
while [[ $x != 0 ]]
do
read x
if [ $x -gt 0 ]
then cnt=`expr $cnt + $x`
fi
done

echo $cnt

-b filename - Block special file
-c filename - Special character file
-d directoryname - Check for directory Existence
-e filename - Check for file existence, regardless of type (node, directory, socket, etc.)
-f filename - Check for regular file existence not a directory
-G filename - Check if file exists and is owned by effective group ID
-G filename set-group-id - True if file exists and is set-group-id
-k filename - Sticky bit
-L filename - Symbolic link
-O filename - True if file exists and is owned by the effective user id
-r filename - Check if file is a readable
-S filename - Check if file is socket
-s filename - Check if file is nonzero size
-u filename - Check if file set-user-id bit is set
-w filename - Check if file is writable
-x filename - Check if file is executable





PROGNAME=$(basename $0)
if [[ -e $1 ]]; then
echo -e "\nFile Type:"
file $1
echo -e "\nFile Status:"
stat $1
else
echo "$PROGNAME: usage: $PROGNAME file" >&2
exit 1
fi
'

#file operation prac 3

#read -p "enter output file: " filename


if [ $# -lt 1 ]
then
  echo "Usage: " 
  ls
  exit 1

else 
  for i in $*
	do
	if [[ ! -e $i ]]; then
	    echo "$i file not found!"
	
	elif [[ -d $i ]]; then
	    echo "$i is not reguler file!"

	else
   	    echo "$i is currently executable."
   	    ls -l $i
   	    echo "$i's executable permission is now changing."
   	    chmod +x $i
   	    ls -l $i
   	    echo "$i is currently not executable."
        fi
       
	done

fi


INPUT='someletters_12345_moreleters.ext'
SUBSTRING=$(echo $INPUT| cut -d'_' -f 2)
echo $SUBSTRING


