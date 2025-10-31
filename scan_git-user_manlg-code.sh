#!/usr/bin/bash

curl https://github.com/manlg-code/ | grep class=\"repo\" | grep -Po "(?<=href=\").*?(?=\" )"
