node {
  withEnv(['VAR=abc']) {
    sh 'echo $VAR'
    sh 'echo ${VAR}'
    sh "echo ${VAR}"
  }
}