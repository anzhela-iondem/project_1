#!/bin/bash

set -e

cd ./terraform
#terraform init
#terraform apply -var-file=dev.tfvars -auto-approve
terraform destroy -var-file=dev.tfvars -auto-approve

# source .env
# aws eks update-kubeconfig --region $region --name $cluster_name
#export KUBECONFIG=$(pwd)/kubeconfig.yaml
