#!/bin/bash
#!/bin/sh
#First shell script
echo "Enter Your Name"
read Name
echo  "                             Hello,$Name!
                Welcome to RN Calculator.Let's start a journey.
                Hopefully you will enjoying this. Let's start.
                       Are You ready?  1=yes / 2=no"
read a
if [ $a -eq 1 ]
then
echo "you are in."
else
echo "Sorry! Shutting Down..."
fi

while [ "$a" -eq 1 ];
do
echo "Select One:

                                         0 =  Exit                                   
         1 =  checking Even or Odd Number            18 =  Factorial.
         2 =  Add two Number                         19 =  Convert Decimal to Octal.
         3 =  substraction                           20 =  Convert Decimal to Hex-Decimal.
         4 =  multiplication                         21 =  Convert Binary to Octal.
         5 =  division                               22 =  Convert Decimal to Binary
         6 =  Squre                                  23 =  Temperature Converter ° F to ° C
         7 =  Squrer-root                            24 =  Temperature Converter ° C to K
         8 =  Logarithm                              25 =  Temperature Converter ° F to K
         9 =  Check the Number is Prime or Not.      26 =  Temperature Converter K to ° F 
        10 =  Sin(x)rad                              27 =  Convert Octal to Decimal
        11 =  Cos(x)rad                              28 =  Convert Binary to Decimal 
        12 =  Tan(x)rad                              29 =  Convert Binary to Hex
        13 =  And(&&) Operation                      30 =  Convert Hex to Decimal 
        14 =  OR(||) Operation                       31 =  Convert Hex to Binary
        15 =  Not                                    32 =  Convert Hex to Octal
        16 =  π(Pi)                                  33 =  Convert Octal to Binary
        17 =  e^(x)                                  34 =  Convert Octal to Hex"

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
 
 #Log
 elif test $b -eq 8
 then
 echo "Enter the Number:"
 read num
 log1=`echo "ibase=10;obase=10; l($num)" | bc -l`
 #` echo "ibase=2;obase=8; $number113" | bc -l`
 echo "Log is $log1"

 elif test $b -eq 9
 then
  echo "Enter the Number:"
  read c116
  ( for ((i=2; i<=c116/2; i++))
  do
  if test $((c116 % i)) -eq 0
  then
   echo "The Number $c116 is not Prime."
   exit
  else
   echo "The Number $c116 is Prime." 
   exit
  fi
  done )

 #Sin
 elif test $b -eq 10
 then
 echo "Enter the Number:"
 read number
 sin=`echo "scale=4; s($number)" | bc -l`
 echo "sin($number)rad = $sin"
  
 #Cos
 elif test $b -eq 11
 then
 echo "Enter the Number:"
 read number
 cos=`echo "scale=4; c($number)" | bc -l`
 echo "cos($number)rad = $cos"
  
 #Tan
 elif test $b -eq 12
 then
 echo "Enter the Number:"
 read number
 tan=`echo "scale=4; a($number)" | bc -l`
 echo "tan($number)rad = $tan"
 
 #Bollean
 #expr1 && expr2 :
 elif test $b -eq 13
 then
 echo "Enter First Number:"
 read axe
 echo "Enter Second Number:"
 read cxe
 six=` echo "$axe && $cxe" | bc `
 (if test $six -eq 1
  then
   echo "$axe && $cxe is = ($six)True."
  else
   echo "$axe && $cxe is = ($six)False." 
  fi )
  
 #expr1 || expr2 :
 elif test $b -eq 14 
 then
 echo "Enter First Number:"
 read axe
 echo "Enter Second Number:"
 read cxe
 sev=` echo "$axe || $cxe" | bc `
 (if test $sev -eq 1
  then
    echo "$axe || $cxe is = ($sev)True"
  else
    echo "$axe || $cxe is = ($sev)False" 
  fi )
  
 # ! expr : 
 elif test $b -eq 15
 then
 echo "Enter the Number:"
 read number
 eight=` echo "!$number" | bc `
 (if test $eight -eq 1
  then
    echo "!$number = ($eight)True"
  else
    echo "Not, !$number = ($eight)False" 
  fi )
 
  
  #pi : 
 elif test $b -eq 16
 then
 pi11=`echo "h=10;4*a(1)" | bc -l`
 echo " π(Pi) = $pi11 "
 
 # e^(x) : 
 elif test $b -eq 17
 then
 echo "Enter the Number:"
 read number123
 ans1=`echo "e($number123)" | bc -l`
 echo "e^$number123 = $ans1"
 
 #Factorial.
 elif test $b -eq 18
 then
 echo "Enter the Number:"
 read number115
 fac115=1
 for (( i=1 ; i<=number115 ; i++))
 do
   fac115=`echo "scale=4; ($fac115 * $i)" | bc `
 done
 echo " Factorial, $number115! = $fac115"

 #Convert Decimal to Octal.
 elif test $b -eq 19
 then
 echo "Enter the Number:"
 read number112
 ans112=` echo "obase=8;$number112" | bc -l`
 echo " Decimal $number112 = Octal $ans112"
 
 #Convert Decimal to Hex-Decimal.
 elif test $b -eq 20
 then
 echo "Enter the Number:"
 read number114
 ans114=` echo "obase=16;$number114" | bc -l`
 echo " Decimal $number114 = Hex-Decimal $ans114"
 
 # Convert Binary to Octal.
 elif test $b -eq 21
 then
 echo "Enter the Number:"
 read number113
 ans113=` echo "ibase=2;obase=8; $number113" | bc -l`
 echo "Binary $number113 = Octal $ans113"
 

 
 #Convert Decimal to Binary
 elif test $b -eq 22
 then
 echo "Enter the Number:"
 read number111
 ans111=` echo "obase=2; $number111" | bc -l`
 echo "$number111 = $ans111"
    
 #Degree ° F to ° C
 elif test $b -eq 23
 then
 echo "Enter the Number:"
 read number109
 deg109=`echo "scale=4; ($number109 - 32) / 1.8" | bc `
 echo "$number109 ° F = $deg109 ° C"
    
 #Degree ° C to K
 elif test $b -eq 24
 then
 echo "Enter the Number:"
 read number117
 deg117=`echo "scale=4; ($number117 + 273)" | bc `
 echo "$number117 ° C = $deg117 K"
     
 #Degree ° F to K
 elif test $b -eq 25
 then
 echo "Enter the Number:"
 read number309
 deg309=`echo "scale=4; ((5/9($number309 - 32)) + 273" | bc `
 echo "$number309 ° F = $deg309 K"
     
 #Degree K to ° F
 elif test $b -eq 26
 then
 echo "Enter the Number:"
 read number319
 deg319=`echo "scale=4; ((9/5 ($number319 - 273) ) + 32" | bc `
 echo "$number319 K = $deg319 ° F"

 # Convert Octal to Decimal.
 elif test $b -eq 27
 then
 echo "Enter the Number:"
 read number215
 ans215=` echo "ibase=8;obase=10; $number215" | bc -l`
 echo "Octal $number215 = Decimal  $ans215"
  
 # Convert Binary to Decimal.
 elif test $b -eq 28
 then
 echo "Enter the Number:"
 read number216
 ans216=` echo "ibase=2;obase=10; $number216" | bc -l`
 echo "Binary $number216 = Decimal $ans216"
  
 # Convert Binary to Hex.
 elif test $b -eq 29
 then
 echo "Enter the Number:"
 read number217
 ans217=` echo "ibase=2;obase=16; $number217" | bc -l`
 echo "Binary $number217 = Hex $ans217"
  
 # Convert Hex to Decimal.
 elif test $b -eq 30
 then
 echo "Enter the Number:"
 read number218
 ans218=` echo "ibase=16;obase=10; $number218" | bc -l`
 echo "Hex $number218 = Decimal $ans218"
 
 # Convert Hex to Binary.
 elif test $b -eq 31
 then
 echo "Enter the Number:"
 read number219
 ans219=` echo "ibase=16;obase=2; $number219" | bc -l`
 echo "Hex $number219 = Binary $ans219"
 
 # Convert Hex to Octal.
 elif test $b -eq 32
 then
 echo "Enter the Number:"
 read number220
 ans220=` echo "ibase=16;obase=8; $number220" | bc -l`
 echo "Hex $number220 = Octal $ans220"
 
  # Convert Octal to Binary.
 elif test $b -eq 33
 then
 echo "Enter the Number:"
 read number213
 ans213=` echo "ibase=8;obase=2; $number213" | bc -l`
 echo "Octal $number213 = Binary $ans213"
   
 # Convert Octal to Hex.
 elif test $b -eq 34
 then
 echo "Enter the Number:"
 read number214
 ans214=` echo "ibase=8;obase=16; $number214" | bc -l`
 echo "Octal $number214 = Hex $ans214"
 
 elif test $b -eq 0
 then
 echo "Exit! Thank You $Name for using me.See you soon."
 break
 else
 echo "Invalid Keyword ! Try Again."
 
 fi
done


