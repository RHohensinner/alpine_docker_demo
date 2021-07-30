FROM gitpod/workspace-full

# setup buildx manually
ENV BUILDX_BINARY_URL="https://github.com/docker/buildx/releases/download/v0.5.1/buildx-v0.5.1.linux-amd64"

RUN mkdir -p ~/.docker/cli-plugins && curl --output ~/.docker/cli-plugins/docker-buildx \
    --silent --show-error --location --fail --retry 3 \
    "$BUILDX_BINARY_URL" && chmod a+x ~/.docker/cli-plugins/docker-buildx