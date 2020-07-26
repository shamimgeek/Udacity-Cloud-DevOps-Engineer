pipeline {
     agent any
     stages {
          stage('Upload to AWS') {
              steps {
                  withAWS(region:'eu-central-1',credentials:'aws-static') {
                  sh 'echo "Uploading content with AWS creds"'
                      s3Upload(pathStyleAccessEnabled: true, payloadSigningEnabled: true, file:'index.html', bucket:'shamim-static-jenkins-udacity')
              }
         }
     }
}
