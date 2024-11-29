#!/bin/bash
set -eou pipefail

# configure minikube for your environment first!

minikube start # minikube start --memory 6144 --cpus 2 --driver=podman --container-runtime=containerd
minikube addons enable csi-hostpath-driver
minikube addons enable metrics-server

# a note about accessing apps in minikube: https://minikube.sigs.k8s.io/docs/handbook/accessing/
# e.g. minikube tunnel / minikube service

# minikube stop
