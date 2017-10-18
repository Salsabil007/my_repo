#! /bin/bash
DFS()
{
	cd "$1"
	for i in *
	do
		if [ -d "$i" ]
			then echo "|--$i" && echo "|  " && DFS "$i"

		else echo "|--$i"  && echo 
		
		fi
	done
} 
DFS
