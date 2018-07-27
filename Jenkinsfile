#!groovy
pipeline {
  agent any
   environment {
     def mvnHome = tool name: 'maven-3.5.0', type: 'maven'
     def mvnCMD = "${mvnHome}/bin/mvn"
  }
  
  stages {
    stage('Mvn Package') {         
          steps {       
          
            wrap([$class: 'AnsiColorBuildWrapper', 'colorMapName': 'xterm']) {
                
                sh "${mvnCMD} clean package"
            }
          }   
    }
	stage('Build Docker Image'){
	
	steps{
	
	 wrap([$class: 'AnsiColorBuildWrapper', 'colorMapName': 'xterm']) {
        sh "docker build -t lockdown90/spring-petclinic:1.0.${BUILD_NUMBER} ."
		}
    }
	}
	stage('Push Docker image to REG'){
	
	steps{
	
	  withCredentials([string(credentialsId: 'Docker-hub', variable: 'DockerHubPwd')]) {
        sh "docker login -u lockdown90 -p ${DockerHubPwd}"
    }
	 wrap([$class: 'AnsiColorBuildWrapper', 'colorMapName': 'xterm']) {
        sh "docker push lockdown90/spring-petclinic:1.0.${BUILD_NUMBER}"
		}
    }
	
	}
	stage('Clean UP'){
	steps{
        wrap([$class: 'AnsiColorBuildWrapper', 'colorMapName': 'xterm'])
		{
        sh "docker rmi lockdown90/spring-petclinic:1.0.${BUILD_NUMBER}"
		}
    }
	}
	
}
}
