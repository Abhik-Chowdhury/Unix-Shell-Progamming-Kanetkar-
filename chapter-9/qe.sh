# The file /etc/passwd contains information about all the users.
# However it is difficult to decipher the information stored in it.
# Write a shell script which would receive the logname during
# execution, obtain information about it from /etc/passwd and
# display this information on the screen in easily understandable
# format
# Code:
# Take the logname
echo -n "Please enter Logname: "
read logname
user_info=`grep "^$logname:" /etc/passwd`
uname=`echo $user_info|cut -d: -f1`
uid=`echo $user_info|cut -d: -f3`
gid=`echo $user_info|cut -d: -f4`
gecos=`echo $user_info|cut -d: -f5`
home_dir=`echo $user_info|cut -d: -f6`
shell=`echo $user_info|cut -d: -f7`
echo -e "Username:$uname\nUID:$uid\nGID:$gid
Full Directory:$gecos\nHome Directory:$home_dir\nShell:$shell"