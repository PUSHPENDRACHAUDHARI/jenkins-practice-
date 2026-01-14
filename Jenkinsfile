pipeline {
    agent any

    environment {
        APP_NAME = "sales-app"
    }

    stages {

        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }

        stage('Maven Build') {
            steps {
                sh '''
                mvn clean package -DskipTests
                '''
            }
        }

        stage('Docker Compose Build') {
            steps {
                sh '''
                docker compose build
                '''
            }
        }

        stage('Docker Compose Deploy') {
            steps {
                sh '''
                docker compose down || true
                docker compose up -d
                '''
            }
        }
    }

    post {
        success {
            echo '✅ Sales ERP deployed successfully'
        }
        failure {
            echo '❌ Pipeline failed'
        }
    }
}

