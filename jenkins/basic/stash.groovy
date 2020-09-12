// https://stackoverflow.com/questions/37687487/copy-build-artifact-between-nodes-using-jenkins-pipeline

node {
    deleteDir()
    sh "touch new_file"
    sh "ls"
    stash includes: "new_file", name: 'stash_test'
}
node {
    deleteDir()
    sh "ls"
    unstash 'stash_test'
    sh "ls"
}