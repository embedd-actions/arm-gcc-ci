FROM debian:stable-slim
#FROM node:16-bullseye

RUN apt-get update && \
    apt-get install \
    gcc-arm-none-eabi \
    -y && \
    rm -rf /var/cache/apt

    

