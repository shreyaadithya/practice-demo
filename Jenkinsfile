pipeline {
    agent any
    stages {
        stage('Dev') {
            steps {
                echo "Building in DEV..."
                sh 'echo "DEV Build" > dev.txt'
                archiveArtifacts artifacts: 'dev.txt'
            }
        }
        stage('Test') {
            steps {
                echo "Running tests..."
                sh 'cat dev.txt || echo "No DEV build found"'
                archiveArtifacts artifacts: 'dev.txt'
            }
        }
        stage('Pre-Prod') {
            steps {
                echo "Deploying to PREPROD..."
                sh 'cp dev.txt preprod.txt'
                archiveArtifacts artifacts: 'preprod.txt'
            }
        }
        stage('Prod') {
            steps {
                echo "Deploying to PROD..."
                sh 'cp preprod.txt prod.txt'
            }
        }
    }
}
