pipeline {
    agent any
    environment {
        DOCKER_USERNAME = 'sharathyp'
        DOCKER_PASSWORD = credentials('docker_new')
    }
    stages {
        stage('Clone GitHub Repo') {
            steps {
                git branch: 'main', url: 'https://github.com/Sharath-yp25/docker.git'
            }
        }
        stage('Docker Login') {
            steps {
                script {
                    def password = DOCKER_PASSWORD
                    bat "echo ${password} | docker login -u ${DOCKER_USERNAME} --password-stdin"
                }
            }
        }
        stage('Build Docker Image') {
            steps {
                bat "docker build -t ${DOCKER_USERNAME}/my-app:latest ."
            }
        }
        stage('Push Docker Image') {
            steps {
                bat "docker push ${DOCKER_USERNAME}/my-app:latest"
            }
        }
    }
}
