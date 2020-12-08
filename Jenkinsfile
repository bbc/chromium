pipeline {
    stages {
        stage('Synchronise') {
            agent { dockerfile true }
            steps {
                sh 'gclient sync'
            }
        }
    }
}