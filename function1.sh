#!/bin/bash -x

function Palindrome()
{
 while (($num > 0))
 do
 rem=$(( $num % 10 ))
 num=$(( $num / 10 ))
 rev=$( echo ${rev}${rem} )
 done
}
read -p "Enter a Number to check whether a given no palindrome or not :" num
givenNum=$num
rem=0
rev=""

Palindrome $num
if (( $givenNum -eq $rev ))
then
echo "Given number is palindrome"
else
echo "Given number is not a palindrome"
fi

