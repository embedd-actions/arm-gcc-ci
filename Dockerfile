FROM debian:stable-slim

RUN apt-get update && \
    apt-get install \
    --no-install-recommends \
    gcc-arm-none-eabi \
    libstdc++-arm-none-eabi-newlib \
    make \
    cmake \
    -y && \
    rm -rf /var/cache/apt

    

