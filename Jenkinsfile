pipeline {
    agent any

    stages {

        stage('Checkout Code') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/<username>/<repo-name>.git'
            }
        }

        stage('Build') {
            steps {
                sh '''
                echo "Building project..."
                '''
            }
        }

        stage('Docker Build') {
            steps {
                sh '''
                docker build -t saleserp-app .
                '''
            }
        }

        stage('Run Container') {
            steps {
                sh '''
                docker rm -f saleserp || true
                docker run -d -p 8000:8000 --name saleserp saleserp-app
                '''
            }
        }
    }
}

