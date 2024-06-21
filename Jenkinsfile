/* Requires the Docker Pipeline plugin */
pipeline {
    agent none
    stages {
		agent { docker { image 'golang:1.22.4-alpine3.20' } }
		options {
			timeout(time: 10, unit: 'MINUTES')
		}
        stage('build') {
            steps {
                sh 'go version'
            }
        }
    }
}

