/* Requires the Docker Pipeline plugin */
pipeline {
    agent { dockerContainer { image 'golang:1.22.4-alpine3.20' } }
	tools { go 'go-1.19' }
    stages {
        stage('build') {
            steps {
                sh 'go version'
            }
        }
    }
}

