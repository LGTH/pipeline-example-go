pipeline {
  agent {
    docker {
      image 'golang:1.11'
    }

  }
  stages {
    stage('build') {
      agent {
        docker {
          image 'golang:1.11'
        }

      }
      steps {
        sh '''pwd
ls
go build -o bin/hello-server
go test -cover
              '''
      }
    }
    stage('public') {
      steps {
        sh '''pwd
        ls
        docker build -t 192.168.56.150/test/pipeline-example-go:v1 .
docker push 192.168.56.150/test/pipeline-example-go:v1'''
      }
    }
  }
}