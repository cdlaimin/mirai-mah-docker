FROM adoptopenjdk/openjdk11-openj9:alpine-jre
EXPOSE 8080
WORKDIR /app
RUN wget -O mcl.zip https://github.com/iTXTech/mirai-console-loader/releases/download/v1.2.2/mcl-1.2.2.zip && unzip mcl.zip && rm -f mcl.zip && chmod +x mcl
RUN mkdir plugins && wget -O plugins/mirai-api-http-v2.3.3.mirai.jar https://github.com/project-mirai/mirai-api-http/releases/download/v2.3.3/mirai-api-http-v2.3.3.mirai.jar
RUN echo exit | ./mcl && rm -fr config
ENTRYPOINT ["/app/mcl"]
