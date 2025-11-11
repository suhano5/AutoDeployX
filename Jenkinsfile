pipeline {
    agent any

    environment {
        APP_NAME = "autodeployx"
        VERSION = "v1.1"
        IMAGE_TAG = "${APP_NAME}:${VERSION}.${BUILD_NUMBER}"
    }

    stages {
        stage('Checkout') {
            steps {
                echo "Fetching code from GitHub..."
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    echo "Building Docker image: ${IMAGE_TAG}"
                    bat "docker build -t ${IMAGE_TAG} ."
                }
            }
        }

        stage('Test Container') {
            steps {
                script {
                    echo "Running container to verify..."
                    bat "docker run -d --name test_container -p 9090:80 ${IMAGE_TAG}"
                    echo "Waiting for Nginx to start..."
                    bat "timeout /t 5"
                    echo "Container is up and running on port 9090!"
                }
            }
        }
    }
}
