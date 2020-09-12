// https://www.jenkins.io/doc/pipeline/steps/pipeline-stage-step/
// https://stackoverflow.com/questions/39445488/using-the-stage-step-without-a-block-argument-is-deprecated
stage('first') {
   echo 'Hi'
}    
node {
    stage('second') {           // only show 2s
        node {
            echo 'node'
            sleep 2
            stage('third') {    // show 2s
                echo 'third'
                sleep 2
            }
            sleep 2             // not show anywhere
        }
    }
}