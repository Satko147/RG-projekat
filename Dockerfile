FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get -y install cmake
RUN apt-get -y install gcc
RUN apt-get -y install g++
# RUN sudo apt-get install mesa-utils
RUN apt-get update && apt-get install -y \
    freeglut3 \
    freeglut3-dev \
    binutils \
    mesa-utils \
    libx11-dev \
    libxmu-dev \
    libxi-dev \
    libglu1-mesa \
    libglu1-mesa-dev
RUN apt-get -y upgrade

WORKDIR /tdss

COPY . .

WORKDIR /tdss/build

RUN cmake -DCMAKE_BUILD_TYPE=release -G "Unix Makefiles" ..
RUN make

ENTRYPOINT ["./tdss"]

