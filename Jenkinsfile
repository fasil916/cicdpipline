pipeline {
  agent any
  stages {
    stage('shell') {
      agent {
        docker {
          image 'maven:3.5.0'
        }

      }
      steps {
        sh 'pwd'
      }
    }

    stage('ddd') {
      steps {
        sh 'echo "hello"'
      }
    }

  }
}