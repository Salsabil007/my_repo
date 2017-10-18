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
		
		#echo -e "|  \c" 
		if [ -d "$i" ]
			then 
				
				
				
				for ((j=1;j<= cnt ;j++))
				
				do
				
				echo -n "$var"
				#j=` expr $j + 1 ` 
				done 
				echo "|--$i" 
				cnt=` expr $cnt + 1 ` 
				DFS "$i" 
				cnt=` expr $cnt - 1 ` 





		elif [ -f "$i" ];then
			
			
			#cnt=` expr $cnt - 1 ` 
			for ((j=1;j<= cnt ;j++))
			
			do
			echo -n "$var"
			#j=` expr $j + 1 ` 
			done 
			echo  "|--$i" 
			fi
	done
cd ../
} 
DFS "$1"
