// CI Pipeline
// pipeline {
//     agent any

//     tools {
//         jdk 'jdk11'
//         maven 'maven3'
//     }

//     environment {
//         SCANNER_HOME = tool 'sonar-scanner'
//         DOCKER_IMAGE = "parasbajaj/todo-static:latest"
//     }

//     stages {

//         stage('Git Checkout') {
//             steps {
//                 git branch: 'main', url: 'https://github.com/Paras-Bajaj/todo-cicd.git'
//             }
//         }

//         stage('Compile') {
//             steps {
//                 sh 'mvn clean compile'
//             }
//         }

//         stage('SonarQube Analysis') {
//             steps {
//                 sh """
//                     $SCANNER_HOME/bin/sonar-scanner \
//                         -Dsonar.host.url=http://host.docker.internal:9000 \
//                         -Dsonar.login=#your token \
//                         -Dsonar.projectKey=todo-cicd \
//                         -Dsonar.projectName=todo-cicd \
//                         -Dsonar.sources=.
//                 """
//             }
//         }


//         stage('Build Application') {
//             steps {
//                 sh "mvn clean install"
//             }
//         }

//         stage('Build & Push Docker Image') {
//             steps {
//                 script {

//                     // Login to DockerHub (credentialsId must match Jenkins credentials)
//                     withDockerRegistry(credentialsId: 'dockerhub', url: '') {

//                         // Build Docker image
//                         sh "docker build -t todo-static:latest ."

//                         // Tag image
//                         sh "docker tag todo-static:latest $DOCKER_IMAGE"

//                         // Push image to DockerHub
//                         sh "docker push $DOCKER_IMAGE"
//                     }
//                 }
//             }
//         }

//         stage('Trigger CD pipeline') {
//             steps {
//                 build job: "Cd_Pipeline", wait: true
//             }
//         }

//     }
// }
// cd Pipeline
// pipeline {
//     agent any

//     stages {
//         stage('Docker Deploy to Container') {
//             steps {
//                 script {
//                     withDockerRegistry(credentialsId: 'dockerhub') {
//                         sh '''
//                         docker stop todo || true
//                         docker rm todo || true

//                         docker pull parasbajaj/todo-static:latest

//                         docker run -d \
//                           --name todo \
//                           -p 8070:3000 \
//                           parasbajaj/todo-static:latest
//                         '''
//                     }
//                 }
//             }
//         }
//     }
// }
