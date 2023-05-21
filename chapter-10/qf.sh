#while executing a shell script either the LOGNAME or the UID 
# is supplied at the command prompt. Write a shell script 
# to find out at how many terminal has this user logged in

# Check if LOGNAME or UID is provided as an argument
if [[ -n $1 ]]; then
    # Get the login name or UID
    input=$1

    # Get the user's logged-in terminals
    terminals=$(who | awk -v input="$input" '$1 == input { print $2 }' | sort -u)

    # Count the number of terminals
    count=$(echo "$terminals" | wc -l)

    # Print the result
    echo "User '$input' is logged in to $count terminal(s):"
    echo "$terminals"
else
    echo "Please provide a login name or UID as an argument."
fi
