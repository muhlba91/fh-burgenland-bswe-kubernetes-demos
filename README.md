# FH Burgenland - BSWE - Kubernetes Demos

[![Build status](https://img.shields.io/github/actions/workflow/status/muhlba91/fh-burgenland-bswe-kubernetes-demos/pipeline.yml?style=for-the-badge)](https://github.com/muhlba91/fh-burgenland-bswe-kubernetes-demos/actions/workflows/pipeline.yml)
[![License](https://img.shields.io/github/license/muhlba91/fh-burgenland-bswe-kubernetes-demos?style=for-the-badge)](LICENSE.md)
[![](https://api.scorecard.dev/projects/github.com/muhlba91/fh-burgenland-bswe-kubernetes-demos/badge?style=for-the-badge)](https://scorecard.dev/viewer/?uri=github.com/muhlba91/fh-burgenland-bswe-kubernetes-demos)

This repository contains demo applications for the course "Softwaremanagement II" at the FH Burgenland (BSWE) for Kubernetes.

---

## Bootstrapping

You need to have a Kubernetes cluster running and `kubectl` configured to access it.

Note: you can use [`minikube.sh`](/minikube.sh) to start a local Minikube cluster.

---

## Wordpress

The [`wordpress`](/wordpress/) application is a simple WordPress instance with a MySQL database.

You will find manifests for installation with `kubectl` in the [`manifests`](/wordpress/manifests/) directory.

You will find manifests for installation with `helm` in the [`helm`](/wordpress/helm/) directory.

In each directory, you will find a `deploy.sh` which will deploy the application to your Kubernetes cluster, and a `destroy.sh` which will remove the application from your Kubernetes cluster.

---

## ArgoCD

The [`argocd`](/argocd/) application is a simple ArgoCD instance with `wordpress` configured as an `Application` using `helm`.

You will find a `deploy.sh` which will deploy everything to your Kubernetes cluster, and a `destroy.sh` which will remove the everything from your Kubernetes cluster.

---

## Exercise

The [`exercise`](/exercise/) directory is a simple echo application example to play around with Kubernetes.

---

## Continuous Integration and Automations

- [GitHub Actions](https://docs.github.com/en/actions) are linting all YAML files.
- [Renovate Bot](https://github.com/renovatebot/renovate) is updating ArgoCD applications, container images, and GitHub Actions.
