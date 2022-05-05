# Download Base Image
FROM ubuntu:20.04 as build

# Install Required Packages
RUN apt update
RUN apt install wget unzip ca-certificates -y

# Download Cloud C2 archive
RUN wget https://c2.hak5.org/download/community -O c2.zip 
RUN unzip c2.zip -d C2

# Copy Start.sh to container image
COPY Start.sh /


ENTRYPOINT [ "sh", "Start.sh" ]