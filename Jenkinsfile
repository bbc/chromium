pipeline {
    agent any

    stages {
        // implicit checkout

        stage('Configure') {
            git 'https://chromium.googlesource.com/chromium/tools/depot_tools.git'
        }
    }
}