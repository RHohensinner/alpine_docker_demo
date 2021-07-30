FROM alpine:3.14

RUN apk update && apk upgrade

RUN apk --update add musl gcc build-base freetype-dev libpng-dev openblas-dev python3
