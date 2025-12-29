#!/bin/sh
cd /
rm -rf master.zip konik-master

wget -c https://github.com/Centrix14/konik/archive/refs/heads/master.zip
unzip master.zip

cd konik-master/
./gradlew assemble

cp /konik-master/build/outputs/apk/debug/konik-master-debug.apk \
   /konikv/konik-debug.apk
