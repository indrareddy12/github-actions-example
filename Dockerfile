# use a maintained JDK 8 image (change to amazoncorretto:8 if you prefer)
FROM eclipse-temurin:8-jdk

# app directory inside container
WORKDIR /app

# copy the built jar into the image (COPY is preferred to ADD here)
COPY target/springboot-images-new.jar ./springboot-images-new.jar

# expose the application port
EXPOSE 8080

# run the jar
ENTRYPOINT ["java", "-jar", "/app/springboot-images-new.jar"]
