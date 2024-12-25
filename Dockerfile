# Use the base image
FROM python:latest

WORKDIR /app

SHELL ["/bin/bash", "-c"]

RUN apt-get update && \
  apt-get upgrade -y

COPY . .

RUN pip install -r requirements.txt && \
  apt-get clean 
