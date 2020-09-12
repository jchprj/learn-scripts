node {
    deleteDir()
    isExist = fileExists file: 'test'
    echo "$isExist"
    
    writeFile file: 'test', text: 'content'
    isExist = fileExists file: 'test'
    echo "${isExist}"
    text = readFile file: 'test'
    echo "${text}"      //content

    writeFile file: 'test', text: 'Y29udGVudAo=', encoding: 'Base64'
    text = readFile file: 'test'
    echo "${text}"      //content

    text = readFile file: 'test', encoding: 'Base64'
    echo "${text}"      //Y29udGVudAo=
}