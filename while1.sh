#!/bin/bash -x

p=0
n=0

while (( $p<=256 && $n<8 ))
do
  ((n++))
   p=$((2**n))
done


