#!/usr/bin/bash

repo=$(curl https://github.com/manlg-code/ | grep class=\"repo\" | grep -Po "(?<=href=\").*?(?=\" )")
repo_count=$(echo "$repo" | wc -l)

if [[ "$repo_count" = "0" || "$repo_count" = "1" ]] ; then 

echo -e "\e[93m"$repo_count"\e[0m repo exist in manlg-code are in this list below:\n\e[93m$repo\e[0m" ; else

echo -e "\e[93m"$repo_count"\e[0m repos exist in manlg-code are in this list below:\n\e[93m$repo\e[0m" ; fi
