pipeline {
  agent any
  stages {
    stage('GIT Checkout') {
      
          steps {       
           checkout scm
            wrap([$class: 'AnsiColorBuildWrapper', 'colorMapName': 'xterm']) {
               sh 'Hello World!'
            }
           
          }
        
      
    }
