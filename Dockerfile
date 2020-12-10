FROM gradle AS build

ENV FNREL=20200501
RUN mkdir -p /opt/fitnesse
RUN wget -O "/opt/fitnesse/fitnesse-standalone.jar" "http://www.fitnesse.org/fitnesse-standalone.jar?responder=releaseDownload&release=${FNREL}"

WORKDIR /usr/src/app
COPY . /usr/src/app
RUN gradle build

FROM openjdk:8-jre
EXPOSE 8080
WORKDIR /app
COPY --from=build /usr/src/app/build/libs/*.jar .
CMD java -jar *.jar