# Write a shell script which gets executed the moment the
# user logs in. It should display the message "Good Morning
# "/" Good Afternoon"/" Good Evening" depending upon the
# time at which the user logs in
# Code:

hour=$(date +%H)
if [ $hour -lt 12 ]; then
echo "Good morning!"
elif [ $hour -lt 18 ]; then
echo "Good afternoon!"
else
echo "Good evening!"
fi