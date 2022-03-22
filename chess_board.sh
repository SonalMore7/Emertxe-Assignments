#!/bin/bash
<<docs
Name: Sonal Bapurao More
Date: Mar 14 2022
Description: Script to print chess board
Sample i/p : No input 
Sample o/p : Chess board
docs

for i in `seq 1 1 8`                                     #Outer for loop and inner for loop used to get 8X8 matrix
do
   for j in `seq 1 1 8`
   do
	     total=`expr $i + $j`                        #Add $i and $j to find position of color on board
	       var=`expr $total % 2`                     #Find mod to print specific color

		if [ $var -ne 0 ]
		then
		echo -e -n "\e[40m" " "                 #Black color   
		else
	        echo -e -n "\e[47m" " "                 #White color
		fi
	done
        echo -e  "\e[[0m"                                #Normal color after 8X8
done
