#!/bin/bash

read a1 a2

if [ $a1 -eq 0 ]
 then
  echo "GCD $a2"
 exit
elif [ $a2 -eq 0 ]
 then
  echo "GCD $a1"
 exit
fi

k=0
sr_n1=$((a1<a2 ? a1:a2))
sr_n2=$(($sr_n1/2))
sr=$((a1>a2 ? a1:a2))


for ((j=1;j<=sr_n1;j++));
do
de=$(($sr_n1%j))
if (($de==0));
 then
  ((k+=1))
fi
done
echo "$k"



if (($k!=2));
 then
  for ((i=sr_n2;i>=1;i--));
  do
  zna=$((sr%i))
  if (($zna==0));
   then
    echo "GCD $i"
   exit
  fi
  done
 exit
elif (($k==2));
 then
  r=$((sr%sr_n1))
  if (($r==0));
   then
    echo "GCD $sr_n1"
   exit
  elif (($r!=0));
   then
    echo "GCD NONE"
   exit
  fi
 exit
fi
