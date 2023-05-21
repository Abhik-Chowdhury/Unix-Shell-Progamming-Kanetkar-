# Two numbers are entered through the keyboard. 
# Write a shell script to find the value of 
# one number raised to the power of another

# Code: 

#!/bin/bash

# Function to calculate power
power() {
  base=$1
  exponent=$2
  result=1

  while ((exponent > 0)); do
    result=$((result * base))
    exponent=$((exponent - 1))
  done

  echo $result
}

# Main program
echo "Enter the base number: "
read base

echo "Enter the exponent: "
read exponent

result=$(power $base $exponent)

echo "$base raised to the power of $exponent is: $result"
