pipeline {
    agent { 
        dockerfile {
            args '-u 127:134'
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