# If a five digit number is input through the keyboard.Write a
# program to calculate the sum
# of its digits.
# Code:

# Take the input five digit number
echo -n "Enter a number:"
read number
number1=$number
count=`echo $number1|wc -c`
count=`echo $count - 1|bc`
echo "The count of digits:$count"
sum=0
# Check the count of digits
if [ $count -eq 5 ]
then
while [ $number -gt 0 ]
do
mod=`echo $number % 10|bc` # It will split digits get the last digit
sum=`echo $sum + $mod|bc` # Add digit to sum
number=`echo $number / 10|bc` # divide number by 10
done
echo "The $number1 digit sum:$sum"
else
echo "The minimum count of digit should be 5"
fi