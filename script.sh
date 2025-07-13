#!/bin/bash


############################
###### Mohamed Fouad #######
######   13/07/2025  #######
############################


#!/bin/bash

echo "###### Mohamed Fouad #######"
echo "######   13/07/2025  #######"
echo "############################"


read -p "Remote Repo Link: " repo

git init

while ! git remote add origin "$repo" &> /dev/null; do
    echo -e "\e[31m[Error] Invalid link, try again\e[0m"
    read -p "Remote Repo Link: " repo
done


git add .
git branch -M main
git commit -m "Initial Commit"
git push -u origin main

