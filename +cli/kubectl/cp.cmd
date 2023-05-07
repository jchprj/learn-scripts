echo https://stackoverflow.com/questions/52407277/how-to-copy-files-from-kubernetes-pods-to-local-system
echo Requires that the 'tar' binary is present

kubectl cp /tmp/foo <some-namespace>/<some-pod>:/tmp/bar
kubectl cp <some-namespace>/<some-pod>:/tmp/foo /tmp/bar