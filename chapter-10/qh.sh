# Any year is entered through the keyboard,Write a shell to
# determine whether the year is a leap year or not. Use the logical
# operator -a and -o.
# Code:

echo -n "Enter Year:"
read date
if [ `expr $date % 4` -eq 0 -o `expr $date % 400` -eq 0 ]
then
echo "$date is leap year"
elif [ `expr $date % 100` -eq 0 ]
then
echo "$date is not leap year"
else
echo "$date is not leap year"
fi