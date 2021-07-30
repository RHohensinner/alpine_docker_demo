FROM alpine:3.14

# Alpine update & upgrade
RUN apk update && apk upgrade

#minimal install of python3 and pip3
RUN apk --update --no-cache add musl gcc build-base freetype-dev libpng-dev openblas-dev python3 \
    py3-pip
