/* Requires the Docker Pipeline plugin */
pipeline {
	agent {
		docker {
			image 'golang:1.22.4-alpine3.20'
		}
	}
	environment {
        ENV = "${env.BRANCH_NAME == 'master' ? 'PROD' : 'DEV'}"
    }
    stages {
		stage('Version Check') {
            steps {
                sh 'go version' // Check if Golang was installed
            }
        }
		stage('Build') {
            steps {
                sh 'bash scripts/build.sh' // Run the build.sh asset
            }
        }
        stage('Test') {
            steps {
                sh 'bash scripts/test.sh' // Run the test.sh asset
            }
        }
    }
}
