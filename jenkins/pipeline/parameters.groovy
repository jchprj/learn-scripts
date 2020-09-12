// Will add a parameter to the pipeline, if it is ran in the VS Code Jenkins Runner extension, will fail if job configuration does not match the parameter.

pipeline {
    agent any
    parameters {
        string(name: 'user', defaultValue: 'John', description: 'A user that triggers the pipeline')
    }
    stages {
        stage('Trigger pipeline') {
            steps {
                echo "Pipeline triggered by ${USER}"
            }
        }
    }
}