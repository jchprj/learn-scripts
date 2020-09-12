pipeline {
    agent any
    stages {
        stage('Failed steps') {
            steps {
                bat fail
            }
        }
    }
    post {
        always {
            echo "Pipeline finished"
        }
    }
}