
export DOMAIN=$5
envsubst < ingress.yml | kubectl delete -f -

kubectl delete -f ops-manager.yml

kubectl delete secret ops-manager-admin-secret -n mongodb  


kubectl delete -f https://raw.githubusercontent.com/mongodb/mongodb-enterprise-kubernetes/master/crds.yaml
kubectl delete -f https://raw.githubusercontent.com/mongodb/mongodb-enterprise-kubernetes/master/mongodb-enterprise.yaml
kubectl delete namespace mongodb


