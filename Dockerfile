
FROM openjdk:17-jdk-slim

ADD Departures-0.0.1-SNAPSHOT.jar app.jar

ENV SPRING_DATASOURCE_DRIVER_CLASS_NAME=com.mysql.cj.jdbc.Driver
ENV SPRING_DATASOURCE_URL=jdbc:mysql://mysql-container:3306/matias?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC
ENV SPRING_DATASOURCE_USERNAME=matias
ENV SPRING_DATASOURCE_PASSWORD=password
ENV SPRING_JPA_HIBERNATE_DDL_AUTO=update
ENV SPRING_DATA_REST_BASEPATH=/api
ENV SPRING_DATASOURCE_INITIALIZATION_MODE=always
ENV SPRING_JPA_SHOW_SQL=true
ENV SERVER_PORT=8070



ENTRYPOINT ["java","-jar","/app.jar"]