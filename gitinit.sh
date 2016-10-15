#!/bin/sh

user='linuxsmurfen'
project=$1

curl -u $user https://api.github.com/user/repos -d "{\"name\":\"$project\"}";
echo "# $project" >> README.md

git init
git add README.md
git commit -m "first commit"
git remote add origin https://$user@github.com/Linuxsmurfen/$project.git
git push -u origin master
