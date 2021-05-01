FROM ubuntu:20.04 as build
COPY C2/c2-3.1.2_amd64_linux /
COPY C2.sh /


ENTRYPOINT [ "sh", "C2.sh" ]