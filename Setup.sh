#!/bin/bash
### Determines Package Manager ###
echo "What is your package manager?"
read PackageManger

if [[ $PackageManger -eq "apt" ]]
then
    sudo apt install wget unzip
elif [[$PackageManger -eq "dnf" ]]
then
    sudo dnf install wget unzip
else
    echo "Error"
fi

### Downloads and unzips CloudC2 Binary ###
wget https://c2.hak5.org/download/community -O c2.zip && unzip -qq c2.zip

mkdir C2
mv c2* C2/
