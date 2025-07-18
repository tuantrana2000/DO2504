#
# Condition if else 
#
echo "Nhap so a: "
read a
if [[ $a == 1 ]]; then
    echo "done with 1"
elif [[ $a == 2 ]]; then
    echo "done with 2"
else
    echo "done with nothing"
fi
