pipeline {
    agent any
	environment {
		OUTPUT_PATH = './outputs/'
	}
    stages {
        stage('first') {
            environment {
                OUTPUT_PATH = './outputs2/'
            }
            steps {
                script {
                    echo "$OUTPUT_PATH"
                }
            }
        }
        stage('second') {
            steps {
                script {
                    echo "$OUTPUT_PATH"
                }
            }
        }
        stage('third') {
            steps {
                script {
                    echo 'third'
                }
            }
        }
    }
}