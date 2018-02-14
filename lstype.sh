#!/bin/bash
# Modify the above lstype.sh to take one or more of the -dir, -links, -exe arguments. 
# The output should be corresponding to the given arguments.

for i in *; do
    stat=0
    for j in $*; do
	if [ $j = -dir ];then
	    if [ -d "$i" ];then
	    stat=1
	    fi
	elif [ $j = -links ];then
	    if [ -h "$i" ];then
	    stat=1
	    fi
	elif [ $j = -exe ];then
	    if [ -x "$i" ];then
	    stat=1
	    fi
	fi
    done
    if [ $stat -eq 1 ];then
	echo $i
    fi
done

# how to execute it
# ./lstype_d.sh -dir or ./lstype_d.sh -dir -links or ./lstype_d.sh -dir -exe or any combination
