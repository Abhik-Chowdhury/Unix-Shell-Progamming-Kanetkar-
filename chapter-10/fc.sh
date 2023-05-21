# Write a menu driven program which has following option:
# 1. Contents of /etc/passwd2. List of user who currently logged in
# 3. Present Working directory
# 4. Exit
# Make use of case statements. The menu should be placed
# approximately in the center of the screen and should be
# display in bold using the tput statement
# Code:


# Set menu options
options=("Contents of /etc/passwd" "List of user who currently logged in" "Present Working directory" "Exit")
# Calculate center of screen
cols=$(tput cols)
center=$((($cols - 20) / 2))
# Display menu with bold text
tput clear
tput bold
tput cup 5 $center
echo "Select an option:"
tput cup 7 $center
# Loop through options and display them
for i in "${!options[@]}";do
    tput cup $((7 + $i)) $center
    echo "$((i+1)). ${options[$i]}"
done
# Read user input and execute corresponding action
tput cup $((7+${#options[@]}+1)) $center
echo -n "Enter option number: "
read choice
case $choice in
    1) cat /etc/passwd;;
    2) who;;
    3) pwd;;
    4) echo "Exiting..."; exit;;
    *) echo "Invalid option";;
esac