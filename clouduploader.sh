#!/bin/bash

#Ask the user for the path
read -p "What is the path you want to upload?" path

storage_account="learntocloud"
storage_key="oEVjOYnwORHdgHeB+EBVw/ZycHgGRujhGGiGJ6CvlvNLtDqG4m3ReDVB+/IIVJlYZ5h3ayrD6Zqd+AStM12ZLA=="
file_share="clouduploader"
local_file=$path 
destination_path="/clouduploader"

azcopy copy $path "https://learntocloud.file.core.windows.net/$file_share$destination_path" --source-key "$storage_key"