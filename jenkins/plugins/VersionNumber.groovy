
env.BUILD_VERSION = VersionNumber versionNumberString: '${BUILD_DATE_FORMATTED,"YYYY-MM-dd"}', versionPrefix: ''
withEnv(["BUILD_NUMBER=${env.BUILD_ID} (${env.BUILD_VERSION})"]) {
    echo "${env.BUILD_NUMBER}"
    currentBuild.displayName = "${env.BUILD_NUMBER}"
}