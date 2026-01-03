End-to-End CI/CD Pipeline for Static Web Application:- 📋 Project Overview This project demonstrates the design and implementation of a complete Continuous Integration and Continuous Deployment (CI/CD) pipeline for a static web application. The pipeline automates the entire software delivery lifecycle from code commit to production deployment using modern DevOps tools and practice.

🎯 Key Features Full Automation: End-to-end workflow from code commit to deployment

Quality Gates: Integrated static code analysis with SonarQube

Containerization: Docker-based deployment with security best practices

Consistency: Identical environments across development and production

Security: Non-root container execution and vulnerability scanning

🛠️ Technology Stack Core Tools Tool Purpose Version GitHub Version Control System Cloud-based Jenkins CI/CD Orchestration LTS with JDK11 Apache Maven Build Automation 3.8.6 SonarQube Code Quality Analysis Community Edition Docker Containerization Latest Programming Languages HTML5 - Web structure

CSS3 - Styling

JavaScript - Client-side functionality

📁 Project Structure text / ├── index.html # Main application file ├── Dockerfile # Docker container definition ├── Jenkinsfile # CI pipeline definition ├── pom.xml # Maven configuration └── README.md # Project documentation 🚀 Pipeline Architecture Workflow Stages Code Commit → Developer pushes to GitHub

Trigger → GitHub webhook notifies Jenkins

Build → Maven validates and packages

Quality Check → SonarQube static analysis

Containerize → Docker image creation

Deploy → Application deployment to runtime

Visual Pipeline Flow text Developer → GitHub → Jenkins → Maven → SonarQube → Docker → Deployment ⚙️ Installation & Setup Prerequisites Windows 10/11 with WSL2 enabled

Docker Desktop for Windows

Git for Windows

OpenJDK 11

Apache Maven

Step-by-Step Setup

Install Docker Desktop powershell
Download from: https://www.docker.com/products/docker-desktop
Enable WSL 2 backend for better performance
Install Required Software powershell choco install git openjdk11 maven -y
Set Up Jenkins in Docker powershell
Create Jenkins data directory
mkdir C:\JenkinsData\jenkins_home

Run Jenkins container
docker run -d --name jenkins-cicd --restart unless-stopped -p 8080:8080 -p 50000:50000 -v C:\JenkinsData\jenkins_home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock ` jenkins/jenkins:lts-jdk11

Get initial admin password
docker exec jenkins-cicd cat /var/jenkins_home/secrets/initialAdminPassword 4. Configure GitHub Webhook Go to GitHub repository → Settings → Webhooks

Add webhook with URL: http://your-jenkins-server:8080/github-webhook/

Content type: application/json

Select events: Just the push event

Install Jenkins Plugins Git Plugin
GitHub Plugin

Pipeline Plugin

Docker Pipeline Plugin

SonarQube Scanner Plugin

Blue Ocean Plugin

🎯 Key Achievements Automated Triggering: GitHub webhooks automatically initiate pipeline

Quality Enforcement: SonarQube gates prevent deployment of substandard code

Security Best Practices: Non-root user execution in Docker containers

Consistent Environments: Docker ensures identical runtime across stages

Complete Automation: Zero manual intervention from code commit to deployment

🔮 Future Scope Automated Testing: Integration of unit, integration, and UI testing

Multi-Environment Deployment: Staging and production environments

Cloud Deployment: AWS S3, Azure Static Web Apps, or Kubernetes

Infrastructure as Code: Terraform or CloudFormation integration

Enhanced Security: Trivy/Clair for vulnerability scanning

Monitoring & Observability: Prometheus, Grafana, ELK stack integration

GitOps Implementation: ArgoCD or Flux for declarative deployments

⚠️ Limitations & Challenges Complexity Overhead: Multiple tools add maintenance burden for simple applications

Integration Challenges: Heterogeneous tool configuration complexities

Feedback Loop Delays: 10-15 minute pipeline execution time

Limited Testing: Basic static analysis without comprehensive web testing

Single Environment: No staging or canary deployment capabilities

Steep Learning Curve: Multiple technologies require significant learning time

📚 References Kim, G., et al. (2021). The DevOps Handbook

Forsgren, N., et al. (2018). Accelerate

Apache Maven Documentation

Jenkins User Documentation

SonarQube Documentation

Docker Documentation

GitHub Documentation

👥 Contributors Vikash Kumar - Project Implementation

Dr. Harpreet Kaur - Project Supervisor

📄 License This project is created for educational purposes as part of the Bachelor of Technology in Computer Science and Engineering program at Lovely Professional University, Punjab.

🌐 Access the Application Once deployed, the static web application is accessible at: http://localhost:8070
