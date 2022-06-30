# Docker image for building gcc for amiga.  
Based on the amiga-gcc-toolchain found here : https://github.com/bebbo/amiga-gcc.  
Creates a docker image that can compile to an amiga executable.  

## How to build
```
$ docker build -t myimage:mytag .
```
Since it downloads and makes the binary when creating the image, this takes some time.  

## How to use the image directly
```
$ docker run vegah/amigabuild:latest 
```

The dockerfile itself is licensed under the GNU Public License 3.  All software that is created is of coursed licensed with their own licenses.  
