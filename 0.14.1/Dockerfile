FROM ubuntu:16.04
LABEL maintainer="saint1991 <se.mizuno.tech@gmail.com>"

ENV BAZEL_VERSION=0.14.1 \
    USER=bazel

RUN useradd -G sudo -m -s /bin/bash ${USER} && \
    apt-get update -y && \
    apt-get install -y \
        unzip

ADD https://github.com/bazelbuild/bazel/releases/download/${BAZEL_VERSION}/bazel-${BAZEL_VERSION}-installer-linux-x86_64.sh /tmp/installer.sh
RUN chmod +x /tmp/installer.sh && \
    sync && \
    /tmp/installer.sh && \
    rm /tmp/installer.sh && \
    apt-get purge -y unzip

USER ${USER}
WORKDIR /home/${USER}

CMD ["bazel"]
