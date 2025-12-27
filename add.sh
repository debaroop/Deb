#!/bin/bash
if [ "$#" -ne 2 ]; then
	 echo "Usage :$0 <num1> <num2>"
	 exit 1
fi	
echo "First argument: $1"
echo "Second argument: $2"

sum=$(( $1 + $2 ))
echo "Sum = $sum"
