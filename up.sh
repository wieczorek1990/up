#!/bin/sh
# Updater of repositories.

rootdir=$PWD
for dir in *
do
  cd $dir
  for subdir in *
  do
    echo $subdir
    cd $subdir
    git pull
    cd - > /dev/null
  done
  cd $rootdir
 done
