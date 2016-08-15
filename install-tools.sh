#/bin/bash
#download rancher-cli
curl -L "https://github.com/rancher/cli/releases/download/v${RANCHER_CLI_VERSION}/rancher-linux-amd64-v${RANCHER_CLI_VERSION}.tar.gz" | tar zx --strip-components 2 -C ${RANCHER_CLI_HOME}
