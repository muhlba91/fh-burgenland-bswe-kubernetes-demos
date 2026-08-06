#!/bin/bash
set -eou pipefail

kubectl --context minikube delete -f 006-gitea-svc.yml
kubectl --context minikube delete -f 005-gitea-deploy.yml
kubectl --context minikube delete -f 004-gitea-pvc.yml
kubectl --context minikube delete -f 003-postgres-svc.yml
kubectl --context minikube delete -f 002-postgres-sts.yml
kubectl --context minikube delete -f 001-postgres-secret.yml
kubectl --context minikube delete -f 000-namespace.yml
