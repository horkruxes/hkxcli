FROM alpine:3.13.6 AS build

WORKDIR /hkxcli/build
COPY src /hkxcli/src
RUN apk add gcc libc-dev make cmake \
        && cmake .. \
        && cmake --build .

FROM alpine:3.13.6

COPY --from=build /hkxcli/build/hkxcli /bin
ENV HOME=/home/hkxcli
WORKDIR $HOME

ENTRYPOINT ["/bin/sh"]
