pipeline {
    agent { dockerfile true }

    stages {
        stage('Synchronise') {
            steps {
                sh 'gclient sync'
            }
        }
    }
}