#!/bin/bash
while :
do

read -p "" M N

if [ -z "$M" ] || [ -z "$N" ]; then
  echo "bye"
  exit 0
fi

GCD () {
local lm=$M
local ln=$N
while :
do
if [[ $lm -eq $ln ]]
        then
        echo "GCD is $lm "||" $ln"         
        break 
elif [[ $lm -gt $ln ]]  
        then
        let lm1=$lm-$ln
        lm=$lm1 ln=$ln
        continue
elif [[ $lm -eq $ln ]];
        then 
        echo "GCD is $lm "||" $ln" 
        break 
elif [[ $lm -lt $ln ]]
        then 
        let ln1=$ln-$lm
        ln=$ln1 lm=$lm
        continue
elif [[ $lm -eq $ln ]];
        then
        echo "GCD is $lm "||" $ln"
        break
elif [[ $lm -gt $ln ]]
        then
        let lm1=$lm-$ln
        lm=$lm1 ln=$ln
        continue
elif [[ $lm -eq $ln ]]
then echo "GCD is $lm "||" $ln"
break
else
GCD lm, ln
fi
done
}
GCD M, N
done