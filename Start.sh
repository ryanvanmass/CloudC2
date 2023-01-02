#!/bin/bash
# $1 = the hostname (URL) or IP Adress


### Check if C2 directory is empty at runtime ###
if [ -d "/C2" ]
then
    if [ "$(ls -A /C2)" ]: then
        echo "Config Loaded" >> /C2/C2.log
    else
        cp /C2_Backup/* /C2















# HTTPS
#./C2/c2-*_amd64_linux -https -hostname $1 -db /C2/c2.db >> /C2/C2.log

# HTTP
./C2/c2-*_amd64_linux -hostname $1 -db /C2/c2.db >> /C2/C2.log