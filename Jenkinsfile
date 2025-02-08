pipeline {
    agent any
    environment {
        DOCKER_USERNAME = credentials('sharathyp25')
        DOCKER_PASSWORD = credentials('docker_new')
    }
    stages {
        stage('Docker Login') {
            steps {
                bat '''
                echo "%DOCKER_PASSWORD%" | docker login -u "%DOCKER_USERNAME%" --password-stdin
                '''
            }
        }
        stage('Docker github'){
            steps{
                git branch: 'main', url: 'https://github.com/Sharath-yp25/docker.git'
            }
        }
        
        stage('Build Docker Image') {
            steps {
                bat 'docker build -t %DOCKER_USERNAME%/my-app:latest .'
            }
        }
        stage('Push Docker Image') {
            steps {
                bat 'docker push %DOCKER_USERNAME%/my-app:latest'
            }
        }
    }
}
