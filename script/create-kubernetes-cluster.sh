#!/bin/sh
kind delete cluster
echo "Creating Kubernetes cluster..."
kind create cluster --config ../cluster/kind-cluster-config.yaml

helmfile --environment local -f ../cluster/helmfile.yaml sync
#helmfile -f ../applications/postgres/helmfile.yaml sync
#helmfile -f ../applications/kafka/helmfile.yaml sync
#helmfile -f ../applications/redis/helmfile.yaml sync
#helmfile -f ../applications/cassandra/helmfile.yaml sync
#helmfile -f ../applications/keycloak/helmfile.yaml sync
