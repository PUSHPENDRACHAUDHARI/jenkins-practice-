pipeline {
    agent any

    stages {

        stage('Maven Build') {
            steps {
                dir('sales') {
                    sh 'mvn clean package -DskipTests'
                }
            }
        }

        stage('Docker Compose Build') {
            steps {
                dir('sales') {
                    sh 'docker compose build'
                }
            }
        }

        stage('Docker Compose Deploy') {
            steps {
                dir('sales') {
                    sh '''
                    docker compose down || true
                    docker compose up -d
                    '''
                }
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
