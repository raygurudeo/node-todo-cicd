pipeline {
    agent any
    stages {
        stage("Code") {
            steps {
                git url: '',branch: ''
            }
        }
        stage("Build") {
            steps {
                echo "Code Build"
            }
        }
        stage("Test") {
            steps {
                echo "Code Tested"
            }
        }
        stage("Deploy") {
            steps {
                echo "Application Deployed"
            }
        }
    }
}