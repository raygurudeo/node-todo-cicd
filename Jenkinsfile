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
        // stage("Push To Dockerhub") {
        //     steps {
        //         withCredentials([usernamePassword(credentialsId:"dockerhub",passwordVariable:"dockerHubPass",usernameVariable:"dockerHubUser")]){
        //             sh "docker tag node-todo-cicd ${env.dockerHubUser}/node-todo-cicd:latest"
        //             sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPass}"
        //             sh "docker push ${env.dockerHubUser}/node-todo-cicd:latest"
        //             echo "Image pushed to Dockerhub"
        //         }
        //     }
        // }
        stage("Deploy") {
            steps {
                sh "docker-compose down && docker-compose up -d"
                echo "Application Deployed And Running"
            }
        }
    }
}