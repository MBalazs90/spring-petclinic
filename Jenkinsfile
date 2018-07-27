pipeline {
  agent any
  stages {
    stage('Mvn Package') {
          def mvnHome = tool name: 'maven-3.5.0', type: 'maven'
          def mvnCMD = "${mvnHome}/bin/mvn"
          when {
            expression { env.BRANCH_NAME == 'master' }
                }
          steps {       
           checkout scm
            wrap([$class: 'AnsiColorBuildWrapper', 'colorMapName': 'xterm']) {
                
                sh "${mvnCMD} clean package"
            }
           
          }
        
      
    }
	}
	}
