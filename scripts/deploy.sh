#!/bin/bash

K8S_DIR="../.k8s"

echo "Applying Kubernetes Namespace..."
kubectl apply -f "$K8S_DIR/00-namespace.yaml"

echo "Applying PVCs..."
kubectl apply -f "$K8S_DIR/90-pvc-heimdall.yaml"
kubectl apply -f "$K8S_DIR/91-pvc-grafana.yaml"

echo "Applying ConfigMaps..."
kubectl apply -f "$K8S_DIR/80-config-heimdall.yaml"
kubectl apply -f "$K8S_DIR/83-config-prometheus.yaml"
kubectl apply -f "$K8S_DIR/85-config-gatus.yaml"

echo "Deploying Applications..."
kubectl apply -f "$K8S_DIR/20-deployment-heimdall.yaml"
kubectl apply -f "$K8S_DIR/21-deployment-grafana.yaml"
kubectl apply -f "$K8S_DIR/22-deployment-glances.yaml"
kubectl apply -f "$K8S_DIR/23-deployment-prometheus.yaml"
kubectl apply -f "$K8S_DIR/24-deployment-node.yaml"
kubectl apply -f "$K8S_DIR/25-deployment-gatus.yaml"

echo "Exposing Services..."
kubectl apply -f "$K8S_DIR/30-service-heimdall.yaml"
kubectl apply -f "$K8S_DIR/31-service-grafana.yaml"
kubectl apply -f "$K8S_DIR/32-service-glances.yaml"
kubectl apply -f "$K8S_DIR/33-service-prometheus.yaml"
kubectl apply -f "$K8S_DIR/34-service-node.yaml"
kubectl apply -f "$K8S_DIR/35-service-gatus.yaml"

echo "Completed."
