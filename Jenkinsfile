pipeline {
    agent any

    stages {
        stage('Git-Docker') {
            steps {
                git branch: 'main', url: 'https://github.com/sankaranarayananmurali/docker.git'
            }
        }
        stage('Docker build and run') {
            steps {
                sh '''docker build -t img1 .
                       docker run img1'''
            }
        }    
    }
        
}
