# Alpine Linux Build Demo

## Minimal Alpine Linux image to build Demo App for CyVerse Advanced Container Camp

The `Dockerfile` in this repo contains a minimal example of a python3 container image.

If you have the [GitPod](https://www.gitpod.io/) [Browser Extension](https://www.gitpod.io/docs/browser-extension/), you can launch GitPod and run `docker build` directly from this repository. 

**Example Build & Push**

Whether this repo is cloned, or accessed from within GitPod, the commands are syntactically the same.

1. Build

Substitute your DockerHub `username` in place of `username` in the image tag below if you want to push this to your own DockerHub account.

`docker build username/cc-minimal:latest .`

2. Test Run

`docker run -it --rm username/cc-minimal:latest /bin/ash`

3. Testing Your Code Packages


*Exercise 1: Decide on packages to add to python, for example something like, `~# pip install -y numpy`. Rewrite the Dockerfile to include the installations. A pip best Practices hint is in the Dockerfile comments.*

***Repeat Steps 1-3, until you finish exercise 1***

*Exercise 2: Make a requirements.txt file to version lock your installed packages. The command to do this is `pip freeze > requirements.txt`. You will need to do this inside the running container. This can be accomplished by mounting a volume with the `-v` flag in `docker run` so you retain the output of the `pip freeze > requirements.txt`. Now you can edit the Dockerfile a final time and add lines to `COPY` the `requirements.txt` to the root directory, `RUN` `pip install -r requirements.txt`, and remember to `pip cache purge` and `rm` the requirements.txt at the end of the build.*

4. Push

***NOTE: If using `GitPod` you need to `docker login` to `DockerHub` or other another image repository***
[Docker login manual](https://docs.docker.com/engine/reference/commandline/login/)

`docker push username/cc-minimal:latest`

**Caveats:**

In this exercise, we used python with Alpine Linux. Sometimes Alpine linux isn't the best choice for python applications [(example).](https://pythonspeed.com/articles/alpine-docker-python/). 

*TLDR: Alpine Linux has C library differences between itself and Debian distributions, and can slow down Python code 50x. It's better to use it to launch something like a flask app.*


