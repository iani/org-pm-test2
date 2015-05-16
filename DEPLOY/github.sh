#!/bin/bash
# echo `date` >> /Users/iani/temp-deploy.txt
# echo `pwd` >> /Users/iani/temp-deploy.txt
# echo $1 >> /Users/iani/temp-deploy.txt
cd $1
git checkout master
git add .
git commit -am "Published on: `date`"
git push origin master
git checkout gh-pages
git merge master
git push origin gh-pages
git checkout master
