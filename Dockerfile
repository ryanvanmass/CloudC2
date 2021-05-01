FROM ubuntu:20.04 as build
COPY C2/c2-3.1.2_amd64_linux /
COPY C2.sh /

RUN apt update
RUN apt install ca-certificates -y

ENTRYPOINT [ "sh", "C2.sh" ]