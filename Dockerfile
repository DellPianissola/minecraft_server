FROM eclipse-temurin:21-jdk

WORKDIR /app

# Baixa o PaperMC
RUN apt-get update && apt-get install -y curl && \
    curl -o paper.jar https://api.papermc.io/v2/projects/paper/versions/1.21.5/builds/7/downloads/paper-1.21.5-7.jar

COPY eula.txt .
COPY plugins/ ./plugins/

EXPOSE 25565

CMD ["java", "-Xms1G", "-Xmx2G", "-jar", "paper.jar"]
