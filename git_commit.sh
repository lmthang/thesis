#!/bin/sh

# Author: Luong Minh Thang <luongmin@comp.nus.edu.sg>, generated at Sun, 01 Jun 2008 15:21:09

date

projName="origin"
branch="master"
if [ $# -gt "0" ] 
then
  comment=$1
  if [ $# -gt "1" ]
  then
    projName=$2

    if [ $# -gt "2" ]
    then
      branch=$3
    fi
  fi
else
  echo "Usage ./git_commit.sh <msg> [<projName>] [<branch>]"
  echo "    <projName>: optional, default=origin"
  echo "    <branch>: optional (must specify projName before using branch), default=master"
  exit
fi

echo "git add -A ."
git add -A .

echo "git commit -a -m \"$comment\""
git commit -a -m "$comment"

echo "git pull $projName $branch"
git pull $projName $branch

echo "git push $projName $branch"
git push $projName $branch
