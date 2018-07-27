pipeline {
  agent any
  def mvnHome = tool name: 'maven-3.5.0', type: 'maven'
  def mvnCMD = "${mvnHome}/bin/mvn"
  stages {
    stage('Mvn Package') {
         
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
