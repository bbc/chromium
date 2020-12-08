pipeline {
    agent { 
        dockerfile {
            args '-u 1000:1000'
        } 
    }

    stages {
        stage('Synchronise') {
            steps {
                sh 'gclient sync'
            }
        }
    }
}