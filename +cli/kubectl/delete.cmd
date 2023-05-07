kubectl delete -f pod.yaml

echo https://kubernetes.io/docs/tasks/run-application/delete-stateful-set/
kubectl delete statefulsets <statefulset-name>
kubectl delete service <service-name>

echo https://kubernetes.io/docs/tasks/configmap-secret/managing-secret-using-config-file
kubectl delete secret mysecret