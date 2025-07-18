#
# list all file in a folder, the folder path come from the keyboard, list the file is can wrx
#
echo "Nhap duong dan thu muc:"
read DUONGDAN
echo "folder path is:  $DUONGDAN"
current_working_dict=$(pwd)

echo "accessing the folder:  $DUONGDAN"
cd  $DUONGDAN
$(pwd)
files=$(ls -lna  $DUONGDAN)

for file in $files
do
    if [ -f $file -a -s $file ]; then 
        echo "INFO:: test file: $file"
        if [ -r  $DUONGDAN ]; then 
            echo "file with enable -r"
        fi 
        if [ -x  $DUONGDAN ]; then 
            echo "file with enable -x"
        fi 
        if [ -w  $DUONGDAN ]; then 
            echo "file with enable -w"
        fi 
    fi 
done 
echo "Completed task. exit folder"
cd ${current_working_dict}