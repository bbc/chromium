pipeline {
    agent any

    stages {
        // implicit checkout

        stage('Configure') {
            steps {
                git 'https://chromium.googlesource.com/chromium/tools/depot_tools.git'
            }
        }
    }
}