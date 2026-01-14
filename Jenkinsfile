pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                sh '''
                echo "Build started..."
                '''
            }
        }

        stage('Docker Build') {
            steps {
                sh '''
                echo "Docker build here"
                '''
            }
        }

        stage('Run Container') {
            steps {
                sh '''
                echo "Container run here"
                '''
            }
        }
    }

    post {
        success {
            echo 'Pipeline SUCCESS ✅'
        }
        failure {
            echo 'Pipeline FAILED ❌'
        }
    }
}

