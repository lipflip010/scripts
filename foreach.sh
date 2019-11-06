#!/bin/bash
argv=( "$@" )
length=$#
lastDir=$((length-2))
command=${argv[$((length-1))]}

for (( i=0 ; i<=$lastDir ; i++ )) 
do
    dir=${argv[$i]}
    (cd $dir && echo -e "\n\n### $dir ###" && $command)
done

#for d in ./*/
#do
#     (cd "$d" && echo "\n\n$d" && $command)
#
#done
