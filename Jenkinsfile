pipeline {
  agent any
  stages {
    stage('GIT Checkout') {
          when {
            expression { env.BRANCH_NAME == 'master' }
                }
          steps {       
           checkout scm
            wrap([$class: 'AnsiColorBuildWrapper', 'colorMapName': 'xterm']) {
               sh "echo 'Hello World!'"
            }
           
          }
        
      
    }
	}
	}
