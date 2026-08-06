#!/bin/bash
set -eou pipefail

HELM_KUBECONTEXT=minikube helm delete -n gitea-helm gitea || true
kubectl --context minikube delete ns gitea-helm --ignore-not-found
