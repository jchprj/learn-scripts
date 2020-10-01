// https://stackoverflow.com/questions/52871773/how-to-write-conditional-step-with-boolean-parameter-in-jenkins-scripted-pipelin
env.bin = "test"
env.out = "${bin}"
env.bool = "true"
node {
    sh "echo ${env.out}"
    if(env.bool.toBoolean()){  
        echo "Yes equal"
    } else {
        echo "Not equal"
    }
}