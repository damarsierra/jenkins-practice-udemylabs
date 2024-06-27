/* Requires the Docker Pipeline plugin */
pipeline {
	agent any
    tools { go 'go-1.19' }
    environment {
        ENV = "${env.BRANCH_NAME == 'master' ? 'PROD' : 'DEV'}"
    }
    stages {
		// stage('Version Check') {
        //     steps {
        //         sh 'go version' // Check if Golang was installed
        //     }
        // }
		stage('Dir Check') {
            steps {
                sh 'ls -la' // Run the build.sh asset
            }
        }
        stage('Build') {
            steps {
                sh 'bash scripts/build.sh' // Run the test.sh asset
            }
        }
    }
}
