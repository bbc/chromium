pipeline {
    agent dockerfile

    stages {
        stage('Synchronise') {
            steps {
                sh 'gclient sync'
            }
        }
    }
}