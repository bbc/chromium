pipeline {
    agent any

    environment {
        PATH+EXTRA='/var/jenkins_home/workspace/chromium_px-rpi-jenkins/depot_tools'
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

        stage('Synchronise') {
            steps {
                sh 'gclient sync'
            }
        }
    }
}