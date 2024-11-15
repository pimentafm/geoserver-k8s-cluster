create-cluster:
	k3d cluster create geoserver-cluster --servers 1 --agents 3 -p "8080:30000@loadbalancer"

update-helm-dependencies:
	helm dependency update ./geoserver

upgrade-helm-chart:
	helm upgrade geoserver ./geoserver

install-helm-chart:
	helm install geoserver ./geoserver

uninstall-helm-chart:
	helm uninstall geoserver

update-helm-values:
	helm upgrade geoserver ./geoserver -f ./geoserver/values.yaml

delete-cluster:
	k3d cluster delete geoserver-cluster

helm-lint:
	helm lint ./geoserver

helm-render-template:
	helm template geoserver ./geoserver > rendered-geoserver.yaml


