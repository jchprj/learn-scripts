// https://www.jenkins.io/doc/pipeline/steps/credentials-binding/#withcredentials-bind-credentials-to-variables

node {
    stage('SECRET_TEST_FILE') {
        // Add a credential with type SECRET FILE first
        withCredentials([file(credentialsId: 'SECRET_TEST_FILE', variable: 'VAR')]) {
            sh "cat ${VAR}"
            sh "cat ${VAR} > SECRET_TEST_FILE"
        }
    }
    stage('SECRET_TEST_STRING') {
        // Add a credential with type SECRET TEXT first
        withCredentials([string(credentialsId: 'SECRET_TEST_STRING', variable: 'VAR')]) {
            sh "echo ${VAR}"
        }
    }
    stage('SECRET_TEST_USERPASS') {
        // Add a credential with type SECRET FILE first
        withCredentials([usernameColonPassword(credentialsId: 'SECRET_TEST_USERPASS', variable: 'VAR')]) {
            sh "echo ${VAR}"
        }
    }
}