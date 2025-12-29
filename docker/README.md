# About
Application assembling can be automated through Docker container. Image for this container defined in `./Dockerfile`.

This image uses `eclipse-temurin:17-noble` (Ubuntu 24.04 Noble Numbat) as base layer and adds only `unzip` package and `assemble.sh` script. This script:
- downloads master branch and unzips it,
- assembles it with `gradlew assemble`,
- copies debug APK into `konikv` volume.

# Container usage
Image and container can be created with `container-create.sh`. This script:
- create `konikv` volume,
- builds image,
- creates container.

To start container you can run something like this:

``` shell
docker container start -i konik
```

(It's interactive since current version of container is interactive-oriented.)

Use `container-clean.sh` for cleaning.
