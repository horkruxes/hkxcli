FROM alpine:3.13.6

# Build args
ARG HKXCLI_DIR=/hkxcli
ARG BUILD_DIR=/hkxcli/build
ARG SRC_DIR=/hkxcli/src
ARG BUILD_DEPS="gcc libc-dev make cmake"

# Environment variables
ENV HOME=/home/hkxcli

# Build steps
WORKDIR $BUILD_DIR
COPY src $SRC_DIR 
RUN apk add $BUILD_DEPS \
        && cmake $SRC_DIR \
        && cmake --build . \
        && apk del $BUILD_DEPS \
        && mv $BUILD_DIR/hkxcli /bin \
        && rm -rf $HKXCLI_DIR

# Environment startup
WORKDIR $HOME
ENTRYPOINT ["/bin/sh"]

