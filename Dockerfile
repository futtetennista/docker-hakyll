FROM haskell:8.0.2

ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8

RUN apt-get update && apt-get --yes install ssh \
    git \
    make \
    imagemagick

RUN stack --resolver lts-9.14 install base \
    hakyll \
    bytestring \
    containers \
    stm \
    mtl \
    conduit-combinators \
    hakyll-sass \
    hakyll-favicon

EXPOSE 8000

ENTRYPOINT ["bash"]
