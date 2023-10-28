echo https://stackoverflow.com/questions/52407277/how-to-copy-files-from-kubernetes-pods-to-local-system
echo Requires that the 'tar' binary is present

kubectl cp /tmp/foo <some-namespace>/<some-pod>:/tmp/bar
kubectl cp <some-namespace>/<some-pod>:/tmp/foo /tmp/bar

echo https://stackoverflow.com/questions/57734514/kubectl-cp-to-a-pod-is-failing-because-of-permission-denied
echo For kubectl cp try copying first to /tmp folder and then mv the file to the path required by shifting to root user

