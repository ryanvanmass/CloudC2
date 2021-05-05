#!/bin/bash
### Determines Package Manager ###
# $1 is taken as input at run to determine which package manager to use to install dependancies

if [ $1 = "apt" ]
then
    sudo apt install wget unzip -y
elif [$1 = "dnf" ]
then
    sudo dnf install wget unzip -y
else
    echo "Error"
fi

### Downloads and unzips CloudC2 Binary ###
wget https://c2.hak5.org/download/community -O c2.zip 
unzip c2.zip

mkdir C2
mv c2* C2/
rm sha*