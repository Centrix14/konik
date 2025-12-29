#!/bin/sh
docker volume create konikv
docker image build --network host -t konik .
docker container create \
       --name=konik \
       --network host \
       --mount type=volume,source=konikv,destination=/konikv \
       -it \
       konik
