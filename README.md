# Hak5 Cloud C2 Docker Image
An Easy to deploy Cloud C2 Docker Image

## Pre-built Docker Image
```
    docker pull ryanvanmass/cloudc2:v1.0
```

## Build and Deploy
### Build
```
    docker build -t cloudc2 .
```

### Run
```
    # HTTPS
    mdkir /CloudC2
    docker run -d -v /CloudC2:/C2 -p 443:443 -p 80:80 -p 2022:2022 cloudc2 <url>
    ### Update Start.sh to enable the HTTPS Command ###

    # HTTP
    mdkir /CloudC2
    docker run -d -v /CloudC2:/C2 -p 8080:8080 -p 80:80 -p 2022:2022 cloudc2 <IP>
```

## Required Ports
* 443   HTTPS
* 8080  HTTP
* 80    HTTP
* 2022  SSH