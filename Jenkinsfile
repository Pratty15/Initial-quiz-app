pipeline {
    agent any

    environment {
        APP_URL = "http://localhost:8080"
    }

    stages {

        stage('Build & Deploy (Docker)') {
    steps {
        sh '''
        docker-compose down --remove-orphans || true
        docker rm -f quiz-web-1 || true
        docker rm -f quiz-db-1 || true
        docker system prune -f || true
        docker-compose up --build -d
        '''
    }
}

        stage('Smoke Test') {
            steps {
                sh 'sleep 5'
                sh 'curl -f http://localhost:8080/index.html || exit 1'
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