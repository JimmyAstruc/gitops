# Boostrap

> Step to execute after installing the cluster

## Argocd

### Install

Execute `./boostrap/install.sh` to install the argocd application on kubernetes

### CLI

Execute `sudo ./boostrap/installArgocdCli.sh` to install the cli
Then run `argocd admin initial-password -n argocd` to get the admin credential
Finally use `argocd login localhost:8080 --username admin --password <PASSWORD>` to connect