pipeline {
  agent any
  stages {
    stage('build') {
            agent { 
                docker { image 'golang:1.11' }
            }
            steps {
              mkdir -p /go/src/github.com/rancher
              ln -s 'pwd' /go/src/github.com/rancher/pipeline-example-go
              cd /go/src/github.com/rancher/pipeline-example-go
              go build -o bin/hello-server
              go test -cover
            }
    }
  }
}
