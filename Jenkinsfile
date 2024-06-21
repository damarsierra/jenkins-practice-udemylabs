/* Requires the Docker Pipeline plugin */
pipeline {
    agent none
    stages {
        stage('build') {
			agent { docker { image 'golang:1.22.4-alpine3.20' } }
			options {
				timeout(time: 10, unit: 'MINUTES')
			}
            steps {
                sh 'go version'
            }
        }
    }
}

