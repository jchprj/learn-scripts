node {
  withEnv(['VAR=${WORKSPACE}/abc']) {
    // https://stackoverflow.com/questions/60067980/jenkins-pipeline-set-environment-variable-based-on-parameter
    switch("${VAR}") {
      case 'abcd':
        env.BRANCH = "master"
        break
      case '${WORKSPACE}/abc':
        env.BRANCH = "2020Q1"
        break 
      case 'prod':
        env.BRANCH = "2019Q4"
        break        
    }
    withEnv(["BRANCH=${env.BRANCH}"]) {
      sh 'echo BRANCH: ${BRANCH}'

    }
    sh """
    echo line 1: $VAR
    echo linedddddd
    """
    sh 'echo line 1: $VAR'
    sh 'echo line 2: ${VAR}'
    sh "echo line 3: ${VAR}"
    sh "echo line 4: ${env.VAR}"
    sh 'echo line 5: ${env.VAR}'    //Will fail due to Bad substitution
  }
}