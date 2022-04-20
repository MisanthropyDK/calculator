#!/bin/bash

#ansi colors
red="\e[0;31m"
green="\e[0;32m"
yellow="\e[0;33m"
blue="\e[0;34m"

clear # the terminal may hopefully look not messed up

# This script can be used for calculating in the terminal.

# name

# read -p "Enter your name:-" nname

# welcome

# echo " WELCUM $nname" | figlet

# read x and y digit
read -p "enter your X digit:-" Xdigit
echo "$Xdigit"

read -p "enter your y digit:-" Ydigit
echo "$Ydigit"

#display both X and Y digit
echo "X digit = $Xdigit and Y digit = $Ydigit"

# list all available options to calculate

echo "You can do the below options"
echo "1) Addition"
echo "2) Subraction"
echo "3) Multiplication"
echo "4) Division"
echo "5) Exponentiation"
echo "6) Modular Division"
echo "7) Print pi"
echo "8) Exit"

echo "Select any of these above in digit form"
read -p "digit:-" andigit

# case
case $andigit in
1|Addition|add|ADDITION|ad)
echo "addition of $Xdigit and $Ydigit"
echo $(( $Xdigit + $Ydigit ))
;;
2|SUBRACTION|SUB|subraction|sub)
echo "Sub of $Xdigit and $Ydigit"
echo  $(( $Xdigit - $Ydigit ))
;;
3|Multiplication|Multi|multiplication|multi)
echo "Multi of $Xdigit and $Ydigit"
echo  $(( $Xdigit * $Ydigit ))
;;
4|division|divide|Divide|Division)
echo "Division on $Xdigit and $Ydigit"
echo $(( Xdigit ÷ Ydigit ))
;;
5|Exponentiation|Expo|expo|exponentiation)
echo " Expo of $Xdigit and $Ydigit "
echo $(( $Xdigit ** $Ydigit ))
;;
6|modular|Modular|MODULAR)
echo "Modular of $Xdigit and $Ydigit"
echo $(( $Xdigit / $Ydigit ))
;;
7|pi|PI|Pi|print)
pi="3.1415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679821480865132823066470938446095505822317253594081284811174502841027019385211055596446229489549303819644288109756659334461284756482337867831652712019091456485669234603486104543266482133936072602491412737245870066063155881748815209209628292540917153643678925903600113305305488204665213841469519415116094330572703657595919530921861173819326117931051185480744623799627495673518857527248912279381830119491298336733624406566430860213949463952247371907021798609437027705392171762931767523846748184676694051320005681271452635608277857713427577896091736371787214684409012249534301465495853710507922796892589235420199561121290219608640344181598136297747713099605187072113499999983729780499510597317328160963185950244594553469083026425223082533446850352619311881710100031378387528865875332083814206171776691473035982534904287554687311595628638823537875937519577818577805321712268066130019278766111959092164201989"
echo "Enter number of decimal places of pi to print"
read -p "decimal:-" pidecimal
to=$(echo "$pidecimal+2" | bc)
if (( $pidecimal>1000 )) ; then
   echo "try again, enter a digit btw 1 to 1000"
   exit 1
fi
echo "$pi" | cut -cl-$to
;;
8|exit|Exit|EXIT)
# echo "Fuck You" | figlet
#sleep 3s
;;
esac

