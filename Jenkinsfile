pipeline {
  agent any
  stages {
    stage('build') {
            agent { 
                docker { image 'golang:1.11' }
            }
            steps {
              go build -o bin/hello-server
              go test -cover
            }
    }
  }
}
