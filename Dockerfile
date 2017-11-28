FROM haskell:8.0.2

ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8

RUN apt-get update && apt-get install --yes \
    git \
    ssh

RUN stack --resolver lts-9.14 install \
    base \
    bytestring \
    conduit-combinators \
    containers \
    hakyll \
    mtl \
    stm

EXPOSE 8000

ENTRYPOINT ["bash"]
