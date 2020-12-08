pipeline {
    agent { 
        dockerfile {
            args '-u 127:134'
        } 
    }

    stages {
        stage('Configure') {
            steps {
                sh 'gclient config https://github.com/bbc/chromium.git'
                sh 'echo \'target_os=["chromeos"]\' >> .gclient'
            }
        }
        stage('Synchronise') {
            steps {
                sh 'gclient sync'
            }
        }
    }
}