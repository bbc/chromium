pipeline {
    agent { 
        dockerfile {
            filename 'Dockerfile'
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