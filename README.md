# 🚀 End-to-End DevOps CI/CD Pipeline Automation

![DevOps](https://img.shields.io/badge/Domain-DevOps-blue)
![AWS](https://img.shields.io/badge/Cloud-AWS-orange)
![Jenkins](https://img.shields.io/badge/CI%2FCD-Jenkins-red)
![Docker](https://img.shields.io/badge/Container-Docker-blue)
![Kubernetes](https://img.shields.io/badge/Orchestration-Kubernetes-326CE5)
![Maven](https://img.shields.io/badge/Build-Maven-C71A36)

## 📌 Project Overview

This project demonstrates an end-to-end DevOps implementation for automating the build, code quality analysis, containerization and deployment of a Java web application.

The CI/CD pipeline is implemented using Jenkins and integrated with GitHub Webhooks to automate application delivery whenever new code changes are pushed to the repository.

The project focuses on reducing manual intervention, improving deployment consistency and implementing modern DevOps practices.

## 🏗️ Architecture

```text
Developer
    |
    v
GitHub Repository
    |
    v
GitHub Webhook
    |
    v
Jenkins Master
    |
    v
Jenkins Worker Agent
    |
    v
Git Checkout
    |
    v
Maven Build
    |
    v
SonarQube Analysis
    |
    v
Docker Image Build
    |
    v
Docker Hub Push
    |
    v
AWS EKS
    |
    v
Kubernetes Deployment
    |
    v
Kubernetes Service
    |
    v
Application Access
```

## 🛠️ Technology Stack

| Category | Technology |
|---|---|
| Cloud Platform | AWS |
| Operating System | Ubuntu Linux |
| Version Control | Git, GitHub |
| CI/CD | Jenkins |
| Build Tool | Apache Maven |
| Programming | Java |
| Application Server | Apache Tomcat 10.1 |
| Code Quality | SonarQube |
| Containerization | Docker |
| Container Registry | Docker Hub |
| Orchestration | Kubernetes |
| Container Platform | AWS EKS |
| Scripting | Shell, Groovy |

## ⚙️ Project Implementation

### 1. GitHub Integration
- Created a GitHub repository to manage application source code.
- Configured GitHub Webhooks to trigger Jenkins automatically.
- Integrated GitHub with Jenkins for automated source code checkout.

### 2. Jenkins Master and Worker Configuration
- Configured a separate Jenkins Master and Worker architecture.
- Master manages pipeline execution and job scheduling.
- Worker agents execute application builds and deployment workloads.
- Configured SSH-based agent connectivity.

### 3. Maven Build Automation
- Integrated Maven with Jenkins.
- Automated Java application compilation and packaging.
- Generated WAR artifacts using Maven.

```bash
mvn clean package
```

### 4. SonarQube Integration
- Integrated SonarQube with Jenkins.
- Automated static code analysis.
- Analyzed bugs, vulnerabilities and code smells.

### 5. Docker Containerization
- Created a multi-stage Dockerfile.
- Built Java application using Maven.
- Deployed the WAR artifact into Apache Tomcat.
- Generated versioned Docker images.

```bash
docker build -t hari52/demo:v1 .
```

### 6. Docker Hub Integration
- Configured Docker Hub credentials in Jenkins.
- Automated Docker image tagging and pushing.
- Stored application images in Docker Hub.

### 7. Kubernetes Deployment
- Created Kubernetes Deployment and Service manifests.
- Configured application replicas.
- Exposed the application using Kubernetes Service.
- Prepared automated deployment to AWS EKS.

```bash
kubectl apply -f deployement.yml
kubectl apply -f service.yml
kubectl get pods
kubectl get svc
```

### 8. AWS Infrastructure
- Used AWS EC2 to host Jenkins and supporting tools.
- Used AWS EKS for Kubernetes orchestration.
- Used IAM roles for secure AWS access.
- Used VPC and Security Groups for network isolation.

## 🔄 CI/CD Pipeline Stages

1. GitHub source code checkout.
2. Maven application build.
3. SonarQube code quality analysis.
4. Docker image creation.
5. Docker image push to Docker Hub.
6. Kubernetes manifest update.
7. Application deployment to AWS EKS.
8. Deployment verification.

## 📂 Repository Structure

```text
End-to-End/
│
├── src/
│   └── main/
│       └── webapp/
│           └── index.jsp
│
├── pom.xml
├── Dockerfile
├── Jenkinsfile
├── deployement.yml
├── service.yml
└── README.md
```

## 🔐 Security Best Practices

- Managed Jenkins credentials securely.
- Used GitHub authentication for repository access.
- Followed AWS IAM least-privilege principles.
- Avoided hardcoding sensitive credentials.
- Used Kubernetes RBAC for access control.

## 📊 Key Benefits

- Automated CI/CD pipeline implementation.
- Reduced manual deployment activities.
- Improved application delivery consistency.
- Automated code quality analysis.
- Containerized application deployment.
- Scalable Kubernetes infrastructure.
- Separate Jenkins controller and worker architecture.

## 🎯 Skills Demonstrated

- AWS Cloud Infrastructure
- Jenkins CI/CD Automation
- GitHub Webhook Integration
- Jenkins Master-Agent Architecture
- Maven Build Automation
- SonarQube Integration
- Docker Image Management
- Kubernetes Deployment
- AWS EKS Integration
- Linux Administration
- Shell Scripting

## 🚀 Future Enhancements

- Implement automated Kubernetes deployment and rollback.
- Integrate Prometheus and Grafana monitoring.
- Implement Terraform-based infrastructure provisioning.
- Integrate Trivy for Docker image vulnerability scanning.
- Implement AWS Disaster Recovery using cross-region infrastructure.

## 👨‍💻 Author

**Harikrishna**

DevOps Engineer | AWS | Jenkins | Docker | Kubernetes | Terraform | CI/CD

GitHub: https://github.com/Nayakharikrishna

---

⭐ If you find this project useful, feel free to star the repository!
