# 
#   Writing an simple program, which help you list all user in system and display it get username only
#
echo "List username in system $(hostname)"
cat /etc/passwd | grep -vE '^#|^$' | cut -d':' -f1