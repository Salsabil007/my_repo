#! /bin/bash
var="|  " 
cnt=0
j=1
DFS()
{
	#echo -n "|"
	cd "$1"
	for i in *
	
	do
		echo -n "|"
		#echo -e "|  \c" 
		if [ -d "$i" ]
			then echo "--$i" 
				j=1
				
				for ((j=1;j<= cnt ;j++))
				
				do
				echo -n $var
				#j=` expr $j + 1 ` 
				done 
				cnt=` expr $cnt + 1 ` 
				DFS "$i" 
				cnt=` expr $cnt - 1 ` 





		else echo  "--$i" 
			j=1
			#cnt=` expr $cnt - 1 ` 
			for ((j=1;j<= cnt ;j++))
			
			do
			echo -n $var
			#j=` expr $j + 1 ` 
			done 
			
			fi
	done
cd ../
} 
DFS
