println "Hello world!"

node {
    println "on first node"
    echo "run on first node"
}
node {
    println "on second node"
    sh "echo run sh on second node"
}