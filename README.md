# Kubernetes Exercise

This project sets up a Kubernetes environment for a Home Lab with multiple applications deployed and configured. The applications include Heimdall, Grafana, Glances, Prometheus, and Gatus. Each application is deployed with its respective configuration.

## Prerequisites

To deploy and test this project, you will need the following:

- **Kubernetes**: Ensure you have a running Kubernetes cluster. You can use any Kubernetes engine (K3s, MicroK8s, Minikube, etc.) but the one used was Docker Desktop. You can download it from [Docker's official website](https://www.docker.com/products/docker-desktop).
- **kubectl**: Install `kubectl`, the Kubernetes command-line tool. You can follow the installation instructions from the [official Kubernetes documentation](https://kubernetes.io/docs/tasks/tools/install-kubectl/).

## Features

### Heimdall

Heimdall is a dashboard for web applications. It helps you organize and access your applications easily.
It has been configured to allow access to Prometheus, Grafana, Glances and Gatus.

### Grafana

Grafana is an open-source platform for monitoring and observability. It allows you to query, visualize, alert on, and understand your metrics no matter where they are stored.

### Glances

Glances is a cross-platform monitoring tool which aims to present a large amount of monitoring information through a curses or Web-based interface.

### Prometheus

Prometheus is an open-source systems monitoring and alerting toolkit. It collects and stores its metrics as time series data, i.e., metrics information is stored with the timestamp at which it was recorded, alongside optional key-value pairs called labels.

### Node Explorer

Node Explorer is a Prometheus exporter for hardware and OS metrics exposed by *nix kernels, written in Go with pluggable metric collectors. Prometheus scrapes these metrics to monitor the health and performance of the nodes.

### Gatus (Monitoring)

Gatus is a service health dashboard. It monitors the status of your services and provides a simple and clean interface to view their status.
The Gatus application is configured to monitor the status of Heimdall, Prometheus, Grafana, and Glances services.

## Deployment

To deploy the entire setup, run the `deploy.sh` script:

```sh
cd scripts
./deploy.sh
```

## Accessing the Dashboard
To access the Heimdall dashboard and test it, simply head on to [http://localhost:31000](http://localhost:31000/).