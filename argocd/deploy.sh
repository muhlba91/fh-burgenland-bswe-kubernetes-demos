#!/bin/bash
set -eou pipefail

helm repo add argo https://argoproj.github.io/argo-helm
HELM_KUBECONTEXT=minikube helm upgrade --install -n argocd --create-namespace -f values.yml argocd argo/argo-cd
HELM_KUBECONTEXT=minikube helm upgrade --install -n argocd -f values-apps.yml argocd-apps argo/argocd-apps

# to expose argocd open the chosen method in a new terminal:
# - minikube tunnel
# - minikube service -n argocd argocd-server --url

# after syncing wordpress
# to expose wordpress open the chosen method in a new terminal:
# - minikube tunnel
# - minikube service -n wordpress-argocd wordpress --url
