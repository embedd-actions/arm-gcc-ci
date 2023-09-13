FROM alpine:latest

RUN apk update \
    && \
    apk add \
    gcc-arm-none-eabi \
    make \
    cmake \
    && \
    apk cache clean

    

