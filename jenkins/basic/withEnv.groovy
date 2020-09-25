node {
  withEnv(['VAR=${WORKSPACE}/abc']) {
    sh 'echo line 1: $VAR'
    sh 'echo line 2: ${VAR}'
    sh "echo line 3: ${VAR}"
    sh "echo line 4: ${env.VAR}"
    sh 'echo line 5: ${env.VAR}'    //Will fail due to Bad substitution
  }
}