// https://stackoverflow.com/questions/37463489/how-do-i-assure-that-a-jenkins-pipeline-stage-is-always-executed-even-if-a-prev

node {
    try {
        sh "false"
    } finally {
        stage 'finalize'
        echo "I will always run!"
    }
    echo "Done"
}