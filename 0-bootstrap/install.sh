#! /bin/bash

echo "Install argocd in kubernetes.\r\n"

helm repo add argo https://argoproj.github.io/argo-helm
helm install argocd argo/argo-cd -v 20 --version 7.3.11  \
    --kubeconfig  ~/.kube/config \
    --namespace argocd --create-namespace \
    --values ${0%/*}/argocd/values.yaml \
    --values ${0%/*}/argocd/minikube/values.yaml