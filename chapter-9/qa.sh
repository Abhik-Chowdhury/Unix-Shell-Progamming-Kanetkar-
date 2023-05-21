# Ramesh's basic salary is input through the keyboard. His
# dearness allowance is 40% of basic salary, and house rent
# allowance is 20% . Write a shell script to calculate his gross
# salary.
# Code:

# take input from keyboard
echo -n "Enter Basic Salary:"
read bs
# calculate the dearness allowance
da=`echo $bs \* 0.4|bc`
echo $da
# calculate the house rent allowance
hra=`echo $bs \* 0.2|bc`
echo $hra
# the gross salary
gs=`echo $bs + $hra + $da|bc`
echo "The Gross Salary:$gs"