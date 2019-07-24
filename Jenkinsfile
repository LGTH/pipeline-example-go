pipeline {
  agent any
  stages {
    stage('build') {
            agent { 
                docker { image 'node:8-alpine' }
            }
            steps {
                sh '''
                    pwd
                    yarn 
                    yarn generate
                    tar -cvf dist.tar dist
                '''
                archiveArtifacts artifacts: 'dist.tar', fingerprint: true
            }
    }
  }
}
