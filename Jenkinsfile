pipeline {
    agent any

    environment {
        APP_NAME = "autodeployx"
        VERSION = "v1.2"
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

                    bat '''
                    docker ps -a -q --filter "name=test_container" | findstr . >nul && (
                        docker stop test_container && docker rm test_container
                    )
                    '''

                    bat "docker run -d --name test_container -p 9090:80 ${IMAGE_TAG}"

                    bat 'ping 127.0.0.1 -n 6 >nul'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                script {
                    bat """
                        cd terraform
                        terraform init
                        terraform plan -out=tfplan
                        terraform apply -auto-approve tfplan
                    """
                }
            }
        }

    }  // <-- CLOSE stages block
}      // <-- CLOSE pipeline block
