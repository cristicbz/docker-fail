FROM ubuntu:16.04

ENV LANG C.UTF-8
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -qy curl build-essential
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y && ln -s /root/.cargo/bin/* /usr/bin/
COPY . /src

WORKDIR /src
RUN cargo build
