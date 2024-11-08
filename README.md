Create cluster with load balancer: `k3d cluster create geoserver-cluster --servers 1 --agents 3 -p "8080:30000@loadbalancer"`

Dependency update: `helm dependency update ./geoserver`

Update configuration: `helm upgrade geoserver ./geoserver -f ./geoserver/values.yaml`

Install Chart: `helm install geoserver ./geoserver`

Get context: `kubectl config current-context`

Check metrics server: `kubectl get pods -n kube-system | grep metrics-server`

Check HPA controller logs: `kubectl logs -n kube-system -l k8s-app=metrics-server`
