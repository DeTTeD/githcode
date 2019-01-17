#!/bin/bash
while true
do
        read a b c
        if [[ $a == "exit" ]]; then echo bye; exit 0; fi
        if [[ -z $a || -z $b || -z $c ]]; then echo error; exit 0; fi
        if ! [[ $a =~ ^[0-9]+$ ]];  then echo "not a integer"; exit 0; fi
        if ! [[ $c =~ ^[0-9]+$ ]];  then echo "not a integer"; exit 0; fi
        opers='+ - * / % **'
        if [[ $opers =~ "$b" ]]; then let "res = $a $b $c"; echo $res  
        else echo error; exit 0; fi
done