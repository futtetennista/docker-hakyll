FROM haskell:8.0.2

ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8

RUN apt-get update && \
    apt-get --yes install ssh git make

RUN stack install hakyll

EXPOSE 8000

ENTRYPOINT ["bash"]
