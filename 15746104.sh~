#!/bin/sh

r=0

if [ $1 -gt $2 ]
then
    a=$1
    b=$2
else
    a=$2
    b=$1
fi

if [ $a -eq 0 ]
then 
    echo "error"
    exit 1
elif [ $b -eq 0 ]
then
    b=$a
else
    r=`expr $a % $b`
fi

while [ $r -ne 0 ]; do
    a=$b
    b=$r
    r=`expr $a % $b`
done

echo $b