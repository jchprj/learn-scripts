// https://stackoverflow.com/questions/53859575/jenkinsfile-access-aws-credentials
node {
  withCredentials([[
    $class: 'AmazonWebServicesCredentialsBinding',
    credentialsId: "credentials-id-here",
    accessKeyVariable: 'AWS_ACCESS_KEY_ID',
    secretKeyVariable: 'AWS_SECRET_ACCESS_KEY'
  ]]) {
    // AWS Code
  }
}