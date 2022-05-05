#!/bin/bash
# $1 = the hostname (URL) or IP Adress

# HTTPS
#./C2/c2-*_amd64_linux -https -hostname $1

# HTTP
./C2/c2-*_amd64_linux -hostname $1