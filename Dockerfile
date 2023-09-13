FROM debian:stable-slim

RUN apt-get update && \
    apt-get install \
    gcc-arm-none-eabi \
    -y && \
    rm -rf /var/cache/apt

    

