echo '12-character password is generated'
generated=$(cat /dev/urandom|tr -dc "a-zA-Z0-9-_\$\?"|fold -w 12|head -n 1)
echo " >> $generated"
echo "Add Descriptions"
read ALL
foo=$(cat <<EOF
{"Time": $(date +%F\ \%r), "Description": "$ALL","Password": "$generated"},
EOF
)
echo "Description = $ALL && Password = $generated"
echo $foo >> passwords.json