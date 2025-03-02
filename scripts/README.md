### `deploy.sh`

The `deploy.sh` script automates the deployment of all the components in this project.

1. **Apply Namespace Configuration**: The script applies the namespace configuration to create a namespace called dashboard where all resources will be deployed.

2. **Apply Persistent Volume Claims (PVCs)**: The script applies the PVC configurations to create persistent storage for Heimdall and Grafana applications.

3. **Apply ConfigMaps**: The script applies the ConfigMap configurations to set up the necessary configurations for Heimdall, Prometheus, and Gatus applications.

4. **Apply Deployments**: The script applies the deployment configurations to deploy Heimdall, Grafana, Glances, Prometheus, Node Explorer, and Gatus applications.

5. **Apply Services**: The script applies the service configurations to expose Heimdall, Grafana, Glances, Prometheus, Node Explorer, and Gatus applications.

### **Usage**:
```sh
./deploy.sh
```