#!/bin/bash
set -eou pipefail

kubectl --context minikube apply -f 000-namespace.yml
kubectl --context minikube apply -f 001-postgres-secret.yml
kubectl --context minikube apply -f 002-postgres-sts.yml
kubectl --context minikube apply -f 003-postgres-svc.yml
kubectl --context minikube apply -f 004-gitea-pvc.yml
kubectl --context minikube apply -f 005-gitea-deploy.yml
kubectl --context minikube apply -f 006-gitea-svc.yml

# to expose gitea open the chosen method in a new terminal:
# - minikube tunnel
# - minikube service -n gitea-manifests gitea --url
