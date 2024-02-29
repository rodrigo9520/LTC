#!/bin/bash

#Ask the user for the path
echo -e "\e[1;43mDISCLAIMER: This script is intended to upload files to Azure storage account named "LearnToCloud". 
Optionally you might choose the desired file share
Argument1= PATH, Argument2= Fileshare\e[0m"

filename=${filename//\\//}


#Tests if the path exists
if [[ -f "$1" ]]; then 
    echo "The path $1 exists."

    #Perform upload to Azure file share
    az storage file upload \
    --account-name "learntocloud" \
    --account-key "oEVjOYnwORHdgHeB+EBVw/ZycHgGRujhGGiGJ6CvlvNLtDqG4m3ReDVB+/IIVJlYZ5h3ayrD6Zqd+AStM12ZLA=="\
    --share-name "$2" \
    --source "$1" \
    > /dev/null 2>&1

    #Validates if the upload was successful and outputs a message:
    if [ $? -eq 0 ]; then

        echo "The upload of the $1 was successful to Azure file storage"

    else 

        echo "The upload of the $1 has failed. Either one of the arguments is invalid." 
    fi

else
    echo "$1 doesn't exist."
    exit
fi



    


 

    



    


 

    


