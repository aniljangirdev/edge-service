# docker images
FROM amazoncorretto:17

WORKDIR workspace

ARG JAR_FILE=build/libs/*.jar

COPY ${JAR_FILE} edge-service.jar

ENTRYPOINT ["java","-jar", "edge-service.jar"]