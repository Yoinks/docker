FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive
RUN echo "America/Arizona" > /etc/timezone

RUN apt-get update \
  && DEBIAN_FRONTEND=noninteractive\
  && apt-get install -y \
    tzdata \
    ssh \
    build-essential \
    gcc \
    g++ \
    gdb \
    clang \
    cmake \
    rsync \
    tar \
    python \
  && apt-get clean

RUN useradd -m devuser && yes d3cus3r12# | passwd devuser