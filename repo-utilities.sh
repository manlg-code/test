#!/usr/bin/bash

echo -e "\e[93mChoose Mode:\e[0m\n1. List all user-repo\n2. Git clone all user-repo"
echo -ne "\nType in a number \e[93m(1 or 2)\e[0m:"
read mode

repo=$(curl https://github.com/manlg-code/ | grep class=\"repo\" | grep -Po "(?<=href=\").*?(?=\" )")
repo_count=$(echo "$repo" | wc -l)

list_all_user-repo () {
if [[ "$repo_count" = "0" || "$repo_count" = "1" ]] ; then 

echo -e "\e[93m"$repo_count"\e[0m repo exist in manlg-code are in this list below:\n\e[93m$repo\e[0m" ;

else

echo -e "\e[93m"$repo_count"\e[0m repos exist in manlg-code are in this list below:\n\e[93m$repo\e[0m" ;

fi
}

clone_all-user-repo () {
echo "$repo" | while read reporead ; do git clone https://github.com"$reporead" ../..$reporead ; done
}

case $mode in

1)
list_all_user-repo

;;

2)

list_all_user-repo ; clone_all-user-repo

;;

esac
