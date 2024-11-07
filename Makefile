create-cluster:
	k3d cluster create geoserver-cluster --servers 1 --agents 3 -p "8080:30000@loadbalancer"

update-helm-dependencies:
	helm dependency update ./geoserver

install-helm-chart:
	helm install geoserver ./geoserver

update-helm-configuration:
	helm upgrade --install geoserver ./geoserver --values ./geoserver/values.yaml

delete-cluster:
	k3d cluster delete geoserver-cluster


