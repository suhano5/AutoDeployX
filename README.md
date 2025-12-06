### AutoDeployX – CI/CD Pipeline Using Jenkins, Docker & Terraform
AutoDeployX is a small end-to-end deployment pipeline I built while practicing 
real-world DevOps workflows.
It takes a simple application, builds it with Jenkins, packages it into a Dockerimage, and deploys it using Terraform-managed infrastructure.

This project helped me understand how different DevOps tools fit together in an actual delivery pipeline rather than learning them individually.

###  What This Project Does

* Pulls application code from GitHub

* Builds the app using Jenkins

* Creates a production-ready Docker image

* Pushes the image to Docker Hub

* Deploys infrastructure using Terraform

* Automatically deploys the latest build onto the provisioned server

The idea was to make a minimal but realistic CI/CD flow that I can reuse for my future projects

#### Pipeline Overview

* Developer pushes code → GitHub

* Jenkins triggers a new pipeline run

* Code is built + tested

* A new Docker image is created and pushed to Docker Hub

* Terraform provisions the infrastructure if needed

* Application is deployed automatically on the target VM or container platform

* Logs and status are visible directly in Jenkins

This resembles a production workflow but stays lightweight and easy to understand

### Tools I Used


  Tool            Why I Used It                                             

* Jenkins *     Automates the build → test → deploy stages                
* Docker *      Packages the application consistently for any environment 
* Terraform *   Manages cloud infrastructure cleanly and repeatably       
* GitHub*       Version control + webhook trigger for Jenkins    

### Project STructure

CSS 

AutoDeployX/
├── Jenkinsfile
├── Dockerfile
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
└── src/
    └── (application files)

####  How to Run It (Local or Cloud)

### Clone the repository
bash 

git clone https://github.com/suhano5/AutoDeployX.git
cd AutoDeployX

### Start Jenkins and configure the pipeline

-Add your GitHub credentials

-Set the Docker Hub credentials

-Point the pipeline to your Jenkinsfile

#### Apply TErraform 
bash

-cd terraform
-terraform init
-terraform apply

#### Triggers a Jenkins build

Each commit pushes an updated image and redeploys the app.

### what i learned 

- Writing and debugging Jenkins pipelines

- Connecting GitHub → Jenkins → Docker → Terraform

- Handling environment variables and credentials

- Deploying a simple app in an automated way

- Making the whole flow repeatable and Infrastructure-as-Code driven

#### Future Upgrades

- Add automated rollback strategy

- Implement Prometheus + Grafana monitoring

- Add a staging → production promotion step

- Convert deployment to Kubernetes (K8s)

###  Contributions

- This project is mainly for my own learning, but improvements are welcome.
