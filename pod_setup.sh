set -e

gcloud config set project damianpolan
gcloud config set compute/zone northamerica-northeast1

gcloud container clusters create web0 \
	--num-nodes 1 \
	--node-locations northamerica-northeast1-a # we specify a sub-location otherwise a node will be created in each sublocation of the zone.
gcloud container clusters get-credentials web0

kubectl create deployment damian-web --image=gcr.io/google-samples/hello-app:1.0 
kubectl expose deployment damian-web --type LoadBalancer --port 80 --target-port 8080
