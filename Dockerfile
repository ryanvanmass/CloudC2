# Download Base Image
FROM ubuntu:20.04 as build

# Install Required Packages
RUN apt update
RUN apt install wget unzip ca-certificates

# Download Cloud C2 archive
RUN wget https://c2.hak5.org/download/community -O c2.zip 
RUN unzip c2.zip -d C2

#





COPY C2/c2-3.1.2_amd64_linux /
COPY C2.sh /


ENTRYPOINT [ "sh", "Start.sh" ]