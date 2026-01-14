pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Maven Build') {
            steps {
                dir('sales') {
                    sh '''
                    mvn clean package -DskipTests
                    '''
                }
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
            echo '✅ Pipeline completed successfully'
        }
        failure {
            echo '❌ Pipeline failed'
        }
    }
}

