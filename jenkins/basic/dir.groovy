node {
    deleteDir()
    isExist = fileExists file: 'test'
    echo "${isExist}"
    sh 'mkdir test'
    isExist = fileExists file: 'test'
    echo "${isExist}"
    dir('test') {
        pwd
    }
}