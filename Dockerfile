FROM ubuntu
MAINTAINER abc@gmail.com
WORKDIR /app
RUN apt update -y
RUN apt install maven -y
COPY . .
RUN mvn clean package
