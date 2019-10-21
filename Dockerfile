FROM java:8-jdk
MAINTAINER alex90914@qq.com

RUN mkdir -pv /app
RUN echo "Asia/Shanghai" > /etc/timezone
ADD target/demo-dev-SNAPSHOT.jar  /app/demo-dev-SNAPSHOT.jar
EXPOSE 7014
#CMD ["java", "-Xms512m","-Xmx512m","-XX:PermSize=384m","-XX:MaxPermSize=1024m","--spring.profiles.active=test","-jar","/app/igh-server-1.0-SNAPSHOT.jar"]
CMD ["java","-jar","-Xms512m","-Xmx512m","/app/demo-dev-SNAPSHOT.jar"]

