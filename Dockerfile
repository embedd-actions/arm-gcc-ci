FROM debian:stable-slim

ARG VERSION=12.3.rel1

RUN ARCH="$(dpkg --print-architecture)" && \
    case $ARCH in \
    "amd64") \
        ARCH_TAG="x86_64" \
        ;; \
    "arm64") \
        ARCH_TAG="aarch64" \
        ;; \
    esac && \
    # Get nessecary packages
    apt-get update && \
    apt-get install \
    --no-install-recommends \
    make \
    cmake \
    wget \
    ca-certificates \
    -y && \
    rm -rf /var/cache/apt && \
    mkdir /workdir && \
    cd /workdir && \
    wget https://developer.arm.com/-/media/Files/downloads/gnu/${VERSION}/binrel/arm-gnu-toolchain-${VERSION}-${ARCH_TAG}-arm-none-eabi.tar.xz \
    tar xvf arm-gnu-toolchain-${VERSION}-${ARCH_TAG}-arm-none-eabi.tar.xz && \
    #wget https://github.com/xpack-dev-tools/arm-none-eabi-gcc-xpack/releases/download/v${VERSION}/xpack-arm-none-eabi-gcc-${VERSION}-linux-${ARCH_TAG}.tar.gz && \
    #tar xvf xpack-arm-none-eabi-gcc-${VERSION}-linux-${ARCH_TAG}.tar.gz && \
    rm arm-gnu-toolchain-${VERSION}-${ARCH_TAG}-arm-none-eabi.tar.xz
    
RUN echo 'export PATH="/workdir/xarm-gnu-toolchain-'${VERSION}'-'${ARCH_TAG}'-arm-none-eabi/bin:$PATH"' >> /etc/bashrc

ADD entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
