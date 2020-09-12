// https://www.jenkins.io/doc/pipeline/steps/workflow-cps/#parallel-execute-in-parallel
// https://stackoverflow.com/questions/49370409/how-to-detect-which-parallel-stage-failed-in-a-jenkins-declarative-pipeline

pipeline {
    agent any

    stages {
        stage('Parallel steps') {
            parallel {
                stage('Successful stage') {
                    steps {
                        script {
                            try {
                                sleep 10 
                            } catch (e) {
                                echo('detected failure: Successful stage')
                                throw(e)
                            }
                        }
                    }
                }
                stage('Failure stage') {
                    steps {
                        script {
                            try {
                                bat('exit /b 1')
                            } catch (e) {
                                echo('detected failure: Failure stage')
                                throw(e)
                            }
                        }
                    }
                }
            }
        }
    }
}