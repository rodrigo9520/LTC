#!/bin/bash

#Ask the user for the path
read -p "What is the path you want to upload?" path

az storage file upload \ 
--account-name learntocloud \ 
--account-key 'oEVjOYnwORHdgHeB+EBVw/ZycHgGRujhGGiGJ6CvlvNLtDqG4m3ReDVB+/IIVJlYZ5h3ayrD6Zqd+AStM12ZLA==' \
--share-name clouduploader \
--source $path 
--path /clouduploader