#!/bin/bash

echo "Applying Kubernetes Namespace..."
kubectl apply -f 00-namespace.yaml

echo "Applying PVCs..."
kubectl apply -f 90-pvc-heimdall.yaml
kubectl apply -f 91-pvc-grafana.yaml

echo "Applying ConfigMaps..."
kubectl apply -f 80-config-heimdall.yaml
kubectl apply -f 83-config-prometheus.yaml

echo "Deploying Applications..."
kubectl apply -f 20-deployment-heimdall.yaml
kubectl apply -f 21-deployment-grafana.yaml
kubectl apply -f 22-deployment-glances.yaml
kubectl apply -f 23-deployment-prometheus.yaml
kubectl apply -f 24-deployment-node.yaml

echo "Exposing Services..."
kubectl apply -f 30-service-heimdall.yaml
kubectl apply -f 31-service-grafana.yaml
kubectl apply -f 32-service-glances.yaml
kubectl apply -f 33-service-prometheus.yaml
kubectl apply -f 34-service-node.yaml

echo "Completed."
