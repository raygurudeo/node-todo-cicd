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
                sh "docker build . --rm -t node-todo-cicd"
                echo "Code Build and test completed..."
            }
        }
        stage("Deploy") {
            steps {
                echo "Application Deployed"
            }
        }
    }
}