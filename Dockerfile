# Use the official Ubuntu 22.04 image as the base
FROM ubuntu:latest
# Set environment variables (optional)
ENV DEBIAN_FRONTEND=noninteractive

# Update package lists and install necessary packages
RUN apt-get update && \
    apt-get install -y \
    git \
    nginx \
    curl \
    bison \
    flex \
    gperf \
    help2man \
    libtool-bin \
    meson \
    ninja-build \ 
    texinfo \
    && rm -rf /var/lib/apt/lists/*

RUN git clone --branch crosstool-ng-1.28.0 --depth 1 https://github.com/crosstool-ng/crosstool-ng.git

WORKDIR crosstool-ng

RUN ls
