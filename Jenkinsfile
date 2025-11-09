pipeline {
  agent any

  stages {
    stage('Checkout') {
      steps {
        git 'https://github.com/suhano5/AutoDeployX.git'
      }
    }

    stage('Build Docker Image') {
      steps {
        script {
          docker.build('suhano5/autodeployx:latest')
        }
      }
    }

    stage('Push to Docker Hub') {
      steps {
        withCredentials([string(credentialsId: 'dockerhub-token', variable: 'TOKEN')]) {
          sh 'echo "$TOKEN" | docker login -u suha... --password-stdin' // replace suha... with actual DockerHub username
          sh 'docker push suha.../autodeployx:latest' // replace accordingly
        }
      }
    }

    stage('Deploy (SSH)') {
      steps {
        // This assumes you've setup SSH key credentials in Jenkins and an accessible server
        sh 'ssh -i /path/to/key.pem ec2-user@YOUR_EC2_IP "docker pull suha.../autodeployx:latest && docker run -d -p 80:80 suha.../autodeployx:latest"'
      }
    }
  }
}
