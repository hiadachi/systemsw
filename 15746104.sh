#!/bin/sh

if [ $1 -gt $2 ]
then
    a=$1
    b=$2
else
    a=$2
    b=$1
fi

r=`expr $a % $b`

while [ $r -ne 0 ]; do
    a=$b
    b=$r
    r=`expr $a % $b`
done

echo $b