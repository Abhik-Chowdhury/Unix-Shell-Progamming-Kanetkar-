# A friend of yours has promised to log in at a particular time.
# However, he has not kept the promise. You want to contact 
# him as soon as he logs in .Write shell script checks after 
# every one minute whether your friend has logged in or not 
# The logname should be supplied to the shell script at command prompt. 
# Use until loop

# Code

logname=$1

until who | grep -wq "$logname"; do
  echo "Friend has not logged in yet..."
  sleep 60
done

echo "Friend has logged in! Contact your friend now."
