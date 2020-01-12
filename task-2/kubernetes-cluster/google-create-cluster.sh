#!/usr/bin/env bash

cluster_name="challange-cluster"
project="core-depth-264814"

echo "Creating cluster in async mode..."
gcloud container clusters create \
  --num-nodes 2 \
  --zone europe-west1-c \
  --machine-type n1-standard-1 \
  --image-type UBUNTU \
  --project $project \
  --no-enable-cloud-monitoring \
  --no-enable-cloud-logging \
  $cluster_name

echo "Getting gke credentials..."
gcloud container clusters get-credentials $cluster_name --zone europe-west1-c --project $project

echo "Create cluster role binding for cluster admin"
kubectl create clusterrolebinding cluster-admin-binding \
  --clusterrole cluster-admin \
  --user "$(gcloud config get-value account)"