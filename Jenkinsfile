pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                echo "hello world"
            }
        }
    stage('clone') {
        steps{
                sh "rm -rf hello-world-war"
                sh "git clone https://github.com/pooja4423/hello-world-war.git"
            }
        }
       stage('build') {
        steps{
                sh "docker build -t poojabiradar442/hello-world-war:1.0.1 ."
            }
        } 
        stage('publish') {
        steps{
               withCredentials([usernamePassword(credentialsId: '3b716089-b27c-41a3-abb9-0a566e501860', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                    sh "docker login -u ${DOCKER_USERNAME} -p ${DOCKER_PASSWORD}"
                    sh "docker push poojabiradar442/hello-world-war:1.0.1"
               }
            }
        } 
        
    }
}
