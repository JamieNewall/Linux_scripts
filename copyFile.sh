#!/usr/bin/env bash

startDir=$(pwd)
fileName=$1
# fullFileName="${fileName}"
fullStartFilePath="$startDir/$fileName"


cd
dir=$(find . -type d | fzf)
prefix="./"
dir=${dir#$prefix}
myEndDir="$HOME/$dir"
myFinalDir="$HOME/$dir/$fileName"



cd $myEndDir
echo "first arg is ${fullStartFilePath}"
echo "second arg is ${fileName}"
echo "my end dir is ${myEndDir}"
sudo cp $fullStartFilePath $fileName
cd $myEndDir
