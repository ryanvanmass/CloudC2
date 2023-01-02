#!/bin/bash
# $1 = the hostname (URL) or IP Adress

# HTTPS
#./C2/c2-*_amd64_linux -https -hostname $1 -db /C2/c2.db >> /C2/C2.log

# HTTP
./C2/c2-*_amd64_linux -hostname $1 -db /C2/c2.db >> /C2/C2.log