pipeline {
  agent any
  tools {
    nodejs "NodeJS"
  }
  parameters {
      string(name: 'GIT_ADDRESS', 
      defaultValue: 'https://github.com/paulomenezes/devapps2020.2-paulo.git', 
      description: 'git address for the http clone')
  } 
  stages {
    stage('Checkout') {
      steps {
        sh 'pwd'
        sh "rm -rf devapps2020.2-paulo"
        sh """git clone ${params.GIT_ADDRESS}"""
      }
    }
    stage('Test'){
      steps {
        sh 'ls'
        dir("devapps2020.2-paulo") {
          sh 'pwd'
          sh 'npm install'
          sh 'npm test'
        }
      }
    }
  }
  post {
    failure {
          sh 'echo Failed'
      }
      success {
          sh 'echo Success'
      }
      always {
          sh 'echo Running'
      }
  }
}