#!/bin/bash

set -e

gcloud config set project damianpolan
gcloud config set compute/zone northamerica-northeast1

gcloud container clusters get-credentials web0

kubectl delete deployment hello-web
kubectl delete service hello-web

gcloud container clusters delete web0


