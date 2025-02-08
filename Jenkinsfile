pipeline {
    agent any
    environment {
        DOCKER_USERNAME = 'sharathyp'
        DOCKER_PASSWORD = credentials('docker_new')
    }
    stages {
        stage('Docker github'){
            steps{
                git branch: 'main', url: 'https://github.com/Sharath-yp25/docker.git'
            }
        }
        stage('Docker Login') {
    steps {
        script {
            bat "echo %DOCKER_PASSWORD% | docker login -u %DOCKER_USERNAME% --password-stdin"
        }
    }
}
        
        stage('Build Docker Image') {
            steps {
                bat 'docker build -t latest .'
            }
        }
        stage('Push Docker Image') {
            steps {
                bat 'docker push %DOCKER_USERNAME%/my-app:latest'
            }
        }
    }
}
