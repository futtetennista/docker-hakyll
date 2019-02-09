FROM haskell:8.6.3

ENV LANG=C.UTF-8 \
  LC_ALL=C.UTF-8

RUN apt-get update && apt-get install --yes \
  git \
  ssh

COPY stack.yaml /root/.stack/global-project/stack.yaml

RUN stack upgrade && \
  stack --resolver lts-13.6 install \
    base \
    bytestring \
    conduit-combinators \
    containers \
    hakyll \
    mtl \
    stm

EXPOSE 8000

ENTRYPOINT ["bash"]
