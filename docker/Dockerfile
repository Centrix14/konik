FROM eclipse-temurin:17-noble

VOLUME konikv

ENV ANDROID_HOME=/android

COPY ./.ressdk /android
COPY ./assemble.sh /assemble.sh

RUN apt-get update && apt-get install -y unzip

ENTRYPOINT ["sh"]