# Inno Setup 6 in Docker

If you need to generate packages using inno setup inside the docker, this can help you.

https://hub.docker.com/r/srdavidsilva/inno-setup

## Use from dockerhub

```
docker run srdavidsilva/inno-setup:6
``` 

## Local Build

To Build your local image, run:

```
docker build -t my-inno .
```

To run: 

```
docker run my-inno 
```