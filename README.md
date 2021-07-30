# Alpine Linux Build Demo

## Minimal Alpine Linux image to build Demo App for CyVerse Advanced Container Camp

The `Dockerfile` in this repo contains a minimal example of a python3 container image.

If you have the [GitPod](https://www.gitpod.io/) [Browser Extension](https://www.gitpod.io/docs/browser-extension/), you can launch GitPod and run `docker build` directly from this repository. 

**Example Build & Push**

Whether this repo is cloned, or accessed from within GitPod, the commands are syntactically the same.

1. Build

Substitute your DockerHub username in place of `rbartelme` in the image tag below if you want to push this to your own DockerHub account.

`docker build rbartelme/cc-minimal:latest .`



**Caveats:**

Sometimes Alpine linux isn't the best choice for data science applications [example](https://pythonspeed.com/articles/alpine-docker-python/). TLDR: Alpine Linux has C library differences between itself and Debian distributions, and can slow down Python code 50x. It's better to use it to launch something like a flask app.


