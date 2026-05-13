pipeline {
    agent any

    environment {
        APP_URL = "http://localhost:8080"
    }

    stages {

        stage('Build & Deploy (Docker)') {
            steps {
                sh 'docker-compose down || true'
                sh 'docker-compose up --build -d'
            }
        }

        stage('Smoke Test') {
            steps {
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