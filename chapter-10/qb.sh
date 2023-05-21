# Any integer is input through the keyboard. Write a program to
# find out whether it is an odd number or even number.
# Code:

#Take integer input
echo -n "Enter an Integer:"
read number
# check the integer is even is not
if [ `expr $number % 2` -eq 0 ]
then
echo "$number is even number"
else
echo "$number is odd number"
fi