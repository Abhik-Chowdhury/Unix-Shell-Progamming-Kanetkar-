#!/bin/bash

# write a shell script which will automatically get 
# executed on logging in. This shell script should display the 
# present working directory and report whether your friend 
# whose logname is aa10 has currently logged in or not. 
# If he has logged in then the shell script should send a message to 
# his terminal suggesting a dinner tonight. 
# If you do not have a write permission to his terminal of 
# if he hasn't logged in then such a message should be mailed to 
# him with a request to send confirmation about your proposal

# Get the present working directory

# Code:

pwd

# Check if the user 'aa10' is logged in
if who | grep -q ' aa10 '; then
    echo "Your friend aa10 is currently logged in."

    # Send a message to the friend's terminal
    echo "Hey aa10, how about dinner tonight?" > /dev/pts/$(who | awk '/ aa10 / { print $2; exit }')
else
    echo "Your friend aa10 is not currently logged in."

    # Mail a message to the friend
    # echo "Hey aa10, how about dinner tonight? Please confirm if you're interested." | mail -s "Dinner invitation" abhikc96@gmail.com.com
    echo "Subject: Dinner invitation\n\nHey aa10, how about dinner tonight? Please confirm if you're interested." | sendmail -t abhikc96@gmail.com
fi
