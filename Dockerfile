FROM fedora:37 as Builder

WORKDIR /app
RUN dnf install -y curl java-17-openjdk.x86_64
RUN curl -OJ https://meta.fabricmc.net/v2/versions/loader/1.19.3/0.14.13/0.11.1/server/jar
COPY eula.txt .
COPY start.sh .

RUN chmod +x fabric-server-mc.1.19.3-loader.0.14.13-launcher.0.11.1.jar
RUN chmod +x start.sh
EXPOSE 25565 25575
CMD [ "./start.sh"]

# FROM amazoncorretto:8u362-alpine as Runner
# WORKDIR /app
# COPY --from=Builder /app/fabric.jar /app/fabric.jar
# RUN chmod +x fabric.jar
# CMD [ "./fabric.jar", "nogui" ]