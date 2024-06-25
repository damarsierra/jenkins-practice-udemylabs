/* Requires the Docker Pipeline plugin */
pipeline {
	agent none
    stages {
		stage('Golang Install') {
			agent {
				docker {
					image 'golang:1.22.4-alpine3.20'
				}
			}    
            steps {
                sh 'go version'
            }
        }
    }
}
