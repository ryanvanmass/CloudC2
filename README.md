# Hak5 Cloud C2 Docker Image
An Easy to deploy Cloud C2 Docker Image

## Build and Deploy
### Build
```
    sh Setup.sh

    docker build -t cloudc2 .
```

### Run
```
    # HTTPS
    docker run -t -p 443:443 -p 80:80 -p 2022:2022 cloudc2 <url>
    
    # HTTP
    docker run -t -p 8080:8080 -p 80:80 -p 2022:2022 cloudc2 <IP>
```

## Requirements
### Ports
* 443   HTTPS
* 8080  HTTP
* 80    HTTP
* 2022  SSH