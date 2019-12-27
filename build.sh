# Must be run from project root directory.
# Builds the docker container image and uploads it.
# https://cloud.google.com/kubernetes-engine/docs/tutorials/hello-app

export PROJECT_ID=damianpolan

# sudo service docker start
docker build -t gcr.io/${PROJECT_ID}/hello-app:v1 .

