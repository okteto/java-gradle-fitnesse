FROM gradle AS build
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN gradle build

FROM openjdk:8-jre
EXPOSE 8080
WORKDIR /app
COPY --from=build /usr/src/app/build/libs/*.jar .
CMD java -jar *.jar