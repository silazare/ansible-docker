FROM ubuntu:bionic

RUN set -ex && \
    apt-get -qq update && \
    apt-get -qq -y install python3 python3-pip && \
    apt-get clean autoclean && \
    apt-get autoremove && \
    rm -rf /var/lib/{apt,dpkg,cache,log}/

ARG ANSIBLE_VERSION=2.9.2

RUN set -ex && \
    pip3 --quiet install ansible==${ANSIBLE_VERSION}

RUN mkdir /ansible

WORKDIR /ansible

VOLUME /ansible

COPY entrypoint.sh /

RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
