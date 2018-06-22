FROM ubuntu:16.04

ENV BAZEL_VERSION 0.12.0

RUN apt-get update -y && \
    apt-get install -y \ 
        unzip 

ADD https://github.com/bazelbuild/bazel/releases/download/${BAZEL_VERSION}/bazel-${BAZEL_VERSION}-installer-linux-x86_64.sh /tmp/installer.sh
RUN chmod +x /tmp/installer.sh && \
    sync && \
    /tmp/installer.sh && \
    rm /tmp/installer.sh
