pipeline {
    agent any

    environment {
        APP_URL = "http://localhost:8080"
    }

    stages {

        stage('Clone') {
            steps {
                git 'https://github.com/Pratty15/Initial-quiz-app'
            }
        }

        stage('Build & Deploy (Docker)') {
            steps {
                sh 'docker-compose down || true'
                sh 'docker-compose up --build -d'
            }
        }

        stage('Smoke Test') {
            steps {
                // wait a few seconds for containers
                sh 'sleep 5'
                sh 'curl -f $APP_URL || exit 1'
            }
        }

        stage('List Containers') {
            steps {
                sh 'docker ps'
            }
        }
    }

    post {
        success {
            echo 'Deployment successful ✅'
        }
        failure {
            echo 'Build failed ❌'
        }
    }
}