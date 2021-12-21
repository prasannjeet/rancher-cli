FROM buildpack-deps:jessie-curl

ENV RANCHER_CLI_VERSION 0.6.14
ENV RANCHER_CLI_HOME /usr/lib/rancher-cli

RUN apt-get update \
  && apt-get install -y apt-transport-https ca-certificates \
  && echo "deb https://download.docker.com/linux/debian jessie stable" > /etc/apt/sources.list.d/docker.list \
  && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 58118E89F3A912897C070ADBF76221572C52609D \
  && apt-get update -y \
  && apt-get install -y --force-yes docker-ce

ADD install-tools.sh /usr/local/bin/

RUN mkdir ${RANCHER_CLI_HOME} && /usr/local/bin/install-tools.sh

VOLUME ${RANCHER_CLI_HOME}

ENTRYPOINT ["/usr/lib/rancher-cli/rancher"]
CMD ["--version"]
