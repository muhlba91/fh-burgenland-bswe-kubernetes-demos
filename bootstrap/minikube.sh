#!/bin/bash
set -eou pipefail

# configure minikube for your environment first!

minikube start --keep-context
# or:
# minikube start \
#   --memory 6144 \
#   --cpus 2 \
#   --driver=podman \
#   --container-runtime=containerd \
#   --keep-context

minikube addons enable csi-hostpath-driver
minikube addons enable metrics-server

echo
kubectl --context minikube get storageclass

# a note about accessing apps in minikube:
# https://minikube.sigs.k8s.io/docs/handbook/accessing/
#
# e.g.
# - minikube tunnel
# - minikube service <service> -n <namespace> --url

# stop with:
# minikube stop
