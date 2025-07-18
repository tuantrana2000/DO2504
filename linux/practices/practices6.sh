#
# enter a file from keyboard and validate -w -r -x of file
#
echo "nhap ten file: "
read FILE
echo "test wrx file: $FILE"
if [ -r $FILE ]; then
    echo "file with enable -r"
fi
if [ -x $FILE ]; then
    echo "file with enable -x"
fi
if [ -w $FILE ]; then
    echo "file with enable -w"
fi
ls -lna  $FILE