#!/usr/bin/env bash

cd
dir=$(find . -type d |fzf)
echo $dir
cd $dir


