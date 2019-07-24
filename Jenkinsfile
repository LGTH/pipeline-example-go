pipeline {
  agent any
  stages {
    stage('build') {
            agent { 
                docker { image 'golang:1.11' }
            }
            steps {
              mkdir -p /go/src/github.com/rancher
              cd /go/src/github.com/rancher/pipeline-example-go
              go build -o bin/hello-server
              go test -cover
            }
    }
  }
}
