## Components

### Namespace

- **00-namespace.yaml**: Defines the Kubernetes namespace `dashboard` where all resources will be deployed.

### Deployments

- **20-deployment-heimdall.yaml**: Deploys the Heimdall application with 3 replicas. It includes an init container to copy the configuration file if it doesn't exist.
- **21-deployment-grafana.yaml**: Deploys the Grafana application.
- **22-deployment-glances.yaml**: Deploys the Glances application.
- **23-deployment-prometheus.yaml**: Deploys the Prometheus application.
- **24-deployment-node.yaml**: Deploys the Node-Exporter application.
- **25-deployment-gatus.yaml**: Deploys the Gatus application to monitor the other services.

### Services

- **30-service-heimdall.yaml**: Exposes the Heimdall service.
- **31-service-grafana.yaml**: Exposes the Grafana service.
- **32-service-glances.yaml**: Exposes the Glances service.
- **33-service-prometheus.yaml**: Exposes the Prometheus service.
- **34-service-node.yaml**: Exposes the Node-Exporter service.
- **35-service-gatus.yaml**: Exposes the Gatus service.

### ConfigMaps

- **80-config-heimdall.yaml**: Configuration for the Heimdall application.
- **83-config-prometheus.yaml**: Configuration for the Prometheus application.
- **85-config-gatus.yaml**: Configuration for the Gatus application, including endpoints to monitor Heimdall, Prometheus, Grafana, and Glances.

### Persistent Volume Claims (PVCs)

- **90-pvc-heimdall.yaml**: Persistent storage for the Heimdall application.
- **91-pvc-grafana.yaml**: Persistent storage for the Grafana application.