# If the cost price and selling price of an item is input through
# the keyboard, write a program to determine whether the seller
# has made profit or incurred loss. Also determine how much profit
# was made or loss incurred.
# Code:

# Take the cost price and selling price
echo -n "Enter Cost Price:"
read cp
echo -n "Enter Selling Price:"
read sp
# check the selling is greater than or not  
if [ $sp -gt $cp ]
then
echo "The Profit of:`expr $sp - $cp`"
else
echo "The loss of:`expr $cp - $sp`"
fi