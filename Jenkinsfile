pipeline {
    agent { 
        dockerfile {
            args '-u 127:134'
        } 
    }

    stages {
        stage('Configure') {
            steps {
                script {
                    if (!fileExists('.gclient')) {
                        sh 'gclient config https://github.com/bbc/chromium.git'
                        sh 'echo \'target_os=["chromeos"]\' >> .gclient'
                    } else {
                        echo 'Found .gclient file'
                    }
                }
            }
        }
        stage('Synchronise') {
            steps {
                sh 'gclient sync'
            }
        }
    }
}