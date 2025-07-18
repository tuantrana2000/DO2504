#
# write an script to process the `ls` command and list out all files in folder
# 
echo "path_folder (example /mnt/d/trash/resources/containerization)"
read path_folder

list_folder=$(ls $path_folder)
for folder in $list_folder
do
    echo "listing item in folder: ${folder}"
    ls -lna "${path_folder}/${folder}"
done
