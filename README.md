# ELK-Stack-on-Kubernetes-with-Helm
Base on https://logz.io/blog/deploying-the-elk-stack-on-kubernetes-with-helm/

# Step 1: Setting Up Kubernetes
```
$ minikube start --cpus 4 --memory 8192
$ minikube start --cpus 2 --memory 4096
$ kubectl cluster-info
```
## Step 2: Installing Helm
```
$ curl https://raw.githubusercontent.com/kubernetes/Helm/master/scripts/get > get_Helm.sh
$ chmod 700 get_Helm.sh
$ ./get_Helm.sh
$ Helm init
$ kubectl get pods -n kube-system | grep tiller

```
## Step 3: Deploying an Elasticsearch Cluster with Helm
```
$ Helm repo add elastic https://Helm.elastic.co
## docker-for-mac
$ curl -O https://raw.githubusercontent.com/elastic/helm-charts/master/elasticsearch/examples/docker-for-mac/values.yaml
## minikube
$ curl -O https://raw.githubusercontent.com/elastic/Helm-charts/master/elasticsearch/examples/minikube/values.yaml

$ Helm install --name elasticsearch elastic/elasticsearch -f ./values.yaml
$ kubectl get pods --namespace=default -l app=elasticsearch-master -w
$ kubectl port-forward svc/elasticsearch-master 9200
```
## Step 4: Deploying Kibana with Helm
```
$ Helm install --name kibana elastic/kibana
$ kubectl get pods
```
## Step 5: Deploying Metricbeat with Helm
```
$ Helm install --name metricbeat elastic/metricbeat
1. Watch all containers come up.
  $ kubectl get pods --namespace=default -l app=metricbeat-metricbeat -w
$ kubectl get pods
$ curl localhost:9200/_cat/indices
$ curl http://elasticsearch.domain.com/_cat/indices
```
1.In Kibana, go to the Management → Kibana → Index Patterns page
2.Enter ‘metricbeat-*’ and on the next step select the @timestamp field to finalize the creation of the index pattern in Kibana.