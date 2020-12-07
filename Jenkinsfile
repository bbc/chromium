pipeline {
    agent any

    environment {
        PATH='$PATH:/var/jenkins_home/workspace/chromium_px-rpi-jenkins/depot_tools'
    }

    stages {
        // implicit checkout

        stage('Configure') {
            steps {
                checkout scm: [
                    $class: 'GitSCM',
                    branches: [[name: '*/master']],
                    userRemoteConfigs: [[url: 'https://chromium.googlesource.com/chromium/tools/depot_tools.git']],
                    extensions: [[$class: 'RelativeTargetDirectory', relativeTargetDir: 'depot_tools']]
                ]

                sh 'gclient sync'
            }
        }
    }
}