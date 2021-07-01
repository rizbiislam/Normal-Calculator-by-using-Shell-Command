#!/bin/bash
#!/bin/sh
#First shell script
echo "Enter Your Name"
read Name
echo "Hello, $Name! Welcome to RN Calculator.Let's start a journey.Hopefully you will enjoying this. Let's start.Are You ready? 1=yes/2=no"
read a
if [ $a -eq 1 ]
then
echo "you are in."
else
echo "Sorry!"
fi

while [ "$a" -eq 1 ];
do
echo "Select One:
           1 = checking Even or Odd Number 
           2 = Add two Number 
           3 = substraction 
           4 = multiplication 
           5 = division 
           6 = Squre
           7 = Squrer-root
           0 = Exit "
#checking Even or Odd Number
read b
if test $b -eq 1 
then
echo "Enter the Number:"
read c
d=$(expr "$c" % "2")
if test $d -eq 0
then
echo "The Number $c is Even."
else
echo "The Number $c is Odd."
fi

#addition
elif test $b -eq 2
then
echo "Enter 1st Number:"
 read x
 echo "Enter 2nd Number:"
 read y
 A=`echo  "scale=4; $x + $y" | bc`
 echo "Ans: $A "
  
#substraction
 elif test $b -eq 3
 then
 echo "Enter 1st Number:"
 read m
  echo "Enter 2nd Number:"
 read n
 sub=`echo  "scale=4; $m - $n" | bc`
 echo "Ans: $sub "
 
#multiplication
 elif test $b -eq 4
 then
 echo "Enter 1st Number:"
 read X
 echo "Enter 2nd Number:"
 read Y
 M=`echo  "scale=4; $X * $Y" | bc`
 echo "Ans: $M "

# Division
 elif test $b -eq 5
 then
 echo "Enter 1st Number:"
 read e
  echo "Enter 2nd Number:"
 read f
 div=`echo  "scale=4; $e / $f" | bc`
 echo "Ans: $div "
 
#Square
 elif test $b -eq 6
 then
 echo "Enter the Number:"
 read sq
 squre=`echo  "scale=4; $sq * $sq" | bc`
 echo "Ans: $squre "

#Squrer-root
 elif test $b -eq 7
 then
 echo "Enter the Number:"
 read number
 square_root=`echo "scale=4; sqrt($number)" | bc`
 echo "Square Root is $square_root"
  
 elif test $b -eq 0
 then
 echo "Exit! Thank You $Name for using me.See you soon."
 break
 else
 echo "Invalid Keyword ! Try Again."
 
 fi
done
