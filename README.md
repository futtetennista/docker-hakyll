# docker-hakyll
Base haskell image with hakyll and some other utilities already installed, also available on [Docker Hub](https://hub.docker.com/r/futtetennista/hakyll/).

## Motivation
I wanted to deploy [my webiste](https://futtetennista.github.com) using Github Pages + CircleCI and I ended up creating this docker image to solve the following issues:
1. the official Haskell image doesn't have `make` and `ssh` installed. The former was needed in my project to build a C++ dependency (`libsass`), the latter to pull and push from Github.
2. make build times faster: caching is another option but since what takes **really** long is building all hakyll dependencies, a pre-build image makes improving build times easier without needing to fiddle with explicitly handling file caching.
