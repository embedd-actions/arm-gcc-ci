FROM debian:stable-slim

RUN apt-get update && \
    apt-get install \
    gcc-arm-none-eabi \
    make \
    cmake \
    -y && \
    rm -rf /var/cache/apt

    

