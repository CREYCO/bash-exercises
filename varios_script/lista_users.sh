# get a list of all users
$cut -d ":" -f 1 /etc/passwd
# OR
$awk -F: '{print $1}' /etc/passwd
