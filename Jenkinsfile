/* Requires the Docker Pipeline plugin */
pipeline {
	agent {
		docker {
			image 'golang:1.22.4-alpine3.20'
		}
	}
    stages {
		stage('Version Check') {
            steps {
                sh 'go version' // Check if Golang was installed
            }
        }
		stage('Build') {
            steps {
                sh 'ls -la' // Run the build.sh asset
            }
        }
        stage('Test') {
            steps {
                sh './test.sh' // Run the test.sh asset
            }
        }
    }
}
