# Write a shell script which receives two filenames as
# arguments. It should check whether the two file's contents are
# the same or not. If they are the same then the second file should
# be deleted.
# Code:

cmp $1 $2 > /dev/null 2>&1
if [ $? -eq 0 ]
then
rm -r $2
echo -e "Both file's contents are same\n$2 is deleted"
else
echo "Both file's contents are not same"
fi
ls