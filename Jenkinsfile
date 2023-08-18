pipeline {
    agent any
    stages {
        stage("Code") {
            steps {
                git url: 'https://github.com/raygurudeo/node-todo-cicd.git',branch: 'master'
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