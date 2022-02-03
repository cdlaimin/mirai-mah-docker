FROM ibm-semeru-runtimes:open-17.0.2_8-jre-focal
EXPOSE 8080
WORKDIR /app
RUN apt update && apt install wget unzip
RUN wget -O mcl.zip https://github.com.cnpmjs.org/iTXTech/mirai-console-loader/releases/download/v1.2.2/mcl-1.2.2.zip && unzip mcl.zip && rm -f mcl.zip && chmod +x mcl
RUN mkdir plugins && wget -O plugins/mirai-api-http-v2.4.0.mirai.jar https://github.com.cnpmjs.org/project-mirai/mirai-api-http/releases/download/v2.4.0/mirai-api-http-v2.4.0.mirai.jar
RUN echo exit | ./mcl && rm -fr config
ENTRYPOINT ["/app/mcl"]
