/* Requires the Docker Pipeline plugin */
pipeline {
	agent none
    stages {
		stage("Build Docker Image") {
            agent any
            steps {
				script {
					dockerImage = docker.build('golang:1.22.4-alpine3.20')
				}
            }
        }
        stage('build') {
            steps {
                sh 'go version'
            }
        }
    }
}
