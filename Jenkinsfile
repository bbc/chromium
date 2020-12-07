pipeline {
    agent any

    environment {
        PATH="/var/jenkins_home/workspace/chromium_px-rpi-jenkins/depot_tools:$PATH"
    }

    stages {
        stage('Checkout depot_tools') {
            steps {
                checkout scm: [
                    $class: 'GitSCM',
                    branches: [[name: '*/master']],
                    userRemoteConfigs: [[url: 'https://chromium.googlesource.com/chromium/tools/depot_tools.git']],
                    extensions: [[$class: 'RelativeTargetDirectory', relativeTargetDir: 'depot_tools']]
                ]
            }
        }

        stage('Install dependencies') {
            steps {
                // sh 'dpkg --add-architecture i386'
                sh 'apt update && apt upgrade -y'
                sh 'apt install lsb-release'
                sh './build/install-build-deps.sh --no-chromeos-fonts --arm'
            }
        }

        stage('Synchronise') {
            steps {
                sh 'gclient sync'
            }
        }
    }
}