# AutoDeployX - CI/CD Automation Project

This is a personal DevOps project I created to practice **CI/CD automation**, **containerization**, and **infrastructure provisioning**.  
It uses Jenkins, Docker, and Terraform to deploy a simple NGINX-based static web application on AWS EC2 or locally.

## Tools Used
- Jenkins (CI/CD pipeline)
- Docker & Docker Compose (containerization)
- Terraform (infrastructure as code)
- AWS EC2 (deployment server)
- Git & GitHub (version control)

## Project Overview
1. The code is version-controlled in GitHub.
2. Jenkins automatically triggers a build when changes are pushed.
3. Docker image is built and optionally pushed to Docker Hub.
4. Terraform handles environment setup (local test or AWS EC2).
5. The app is deployed automatically using Docker.

## Folder Structure
```
AutoDeployX/
├── Jenkinsfile
├── Dockerfile
├── docker-compose.yml
├── terraform/
│   ├── local/
│   └── aws/
├── app/
│   └── index.html
```

## Local Testing
To test locally (Windows/macOS/Linux):
```bash
docker-compose up --build
```
Then visit **http://localhost** in your browser.

## Terraform Setup
- For local mock setup → navigate to `terraform/local/`
- For AWS EC2 deployment → navigate to `terraform/aws/` (configure variables before applying)

## About
Created by **Suhan Malabar** as part of my DevOps learning journey.  
GitHub: [suhano5](https://github.com/suhano5)


🛠️ Update (Nov 2025): Improved project documentation and folder cleanup.