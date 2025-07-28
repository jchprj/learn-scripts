echo https://github.com/aws/aws-cli/issues/6920
echo aws eks update-kubeconfig invalid apiVersion #6920
echo error: exec plugin: invalid apiVersion "client.authentication.k8s.io/v1alpha1"

aws eks update-kubeconfig --name ${EKS_CLUSTER_NAME} --region ${REGION}
kubectl version