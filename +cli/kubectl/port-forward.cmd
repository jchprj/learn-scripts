echo https://kubernetes.io/docs/tasks/access-application-cluster/port-forward-access-application-cluster/
echo kubectl port-forward TYPE/NAME [options] [LOCAL_PORT:]REMOTE_PORT [...[LOCAL_PORT_N:]REMOTE_PORT_N]

echo For pod
kubectl port-forward mongo-75f59d57f4-4nd6q 28015:27017
kubectl port-forward pods/mongo-75f59d57f4-4nd6q 28015:27017

echo For deployment
kubectl port-forward deployment/mongo 28015:27017

echo For replicaset
kubectl port-forward replicaset/mongo-75f59d57f4 28015:27017

echo For service
kubectl port-forward service/mongo 28015:27017