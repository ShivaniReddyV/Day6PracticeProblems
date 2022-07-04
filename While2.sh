#!/bin/bash -x
Headcount=0
Tailcount=0
count=1
isHead=0

while(( $count <= 21 ))
do
  ((count++))
  randomCheck="$((RANDOM%2))"
  if (( $isHead == $randomCheck ))
  then
      ((Headcount++))
  else
      ((Tailcount++))
  fi

  if (( $Headcount == 11 ))
  then
      echo "Head is occured 11 times"
      exit 0
  elif (( $Tailcount == 11 ))
  then
      echo "Tail is occured 11 times"
      exit 0
  else
      echo "No face occured"
  fi
done
