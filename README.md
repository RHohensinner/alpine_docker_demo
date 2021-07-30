# Alpine Linux Build Demo

## Minimal Alpine Linux image to build Demo App for CyVerse Advanced Container Camp

**Caveats:**

Sometimes Alpine linux isn't the best choice for data science applications [example](https://pythonspeed.com/articles/alpine-docker-python/). TLDR: Alpine Linux has C library differences between itself and Debian distributions, and can slow down Python code 50x. It's better to use it to launch something like a flask app.


