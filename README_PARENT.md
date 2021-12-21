# rancher-cli

The Rancher Command Line Interface (CLI)is a unified tool to manage your Rancher server. With this tool, you can control your services, containers and hosts within a Rancher environment and automate them through scripts.

## First time usage

```
docker run -ti -v $HOME/.rancher:/root/.rancher adopteunops/rancher-cli:latest --url http://YOUR_RANCHER_MASTER_URL config
```

## Exec Usage

```
docker run -ti -v $HOME/.rancher:/root/.rancher/ adopteunops/rancher-cli:latest exec -ti CONTAINER_NAME bash
```

## On api error

Such as 
```
Error response from daemon: client is newer than server (client API version: 1.24, server API version: 1.22)
```

You can specify the docker version api as such

```
docker run -e DOCKER_API_VERSION=1.22 -ti -v $HOME/.rancher:/root/.rancher/ adopteunops/rancher-cli:latest exec -ti CONTAINER_NAME bash
```
