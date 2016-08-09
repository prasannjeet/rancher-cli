FROM buildpack-deps:jessie-curl

ENV RANCHER_CLI_VERSION 0.0.1
ENV RANCHER_CLI_HOME /usr/lib/rancher-cli

ADD install-tools.sh /usr/local/bin/

RUN mkdir ${RANCHER_CLI_HOME} && /usr/local/bin/install-tools.sh

VOLUME ${RANCHER_CLI_HOME}

ENTRYPOINT ${RANCHER_CLI_HOME}/rancher
