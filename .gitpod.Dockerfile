FROM gitpod/workspace-full

# setup buildx manually
RUN export DOCKER_BUILDKIT=1
RUN docker build --platform=local -o . git://github.com/docker/buildx
RUN mkdir -p ~/.docker/cli-plugins
RUN mv buildx ~/.docker/cli-plugins/docker-buildx