kubectl get pods

echo https://howchoo.com/kubernetes/read-kubernetes-secrets
kubectl describe secret mysecret
kubectl get secret <SECRET_NAME> -o jsonpath="{.data.<DATA>}" | base64 --decode