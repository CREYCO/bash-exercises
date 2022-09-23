# list of all groups
cut -d ":" -f 1 /etc/group
# OR
awk -F: '{print $1}' /etc/group
