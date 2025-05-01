FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    git \
    curl \
    python3.11 \
    python3.11-dev \
    python3.11-venv \
    python3-pip \
    libprotobuf-dev \
    protobuf-compiler \
    libssl-dev \
    libboost-all-dev \
    libgrpc++-dev \
    && rm -rf /var/lib/apt/lists/*

RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.11 1

RUN python3 -m pip install --upgrade pip
