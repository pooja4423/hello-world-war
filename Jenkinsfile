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
               withCredentials([usernamePassword(credentialsId: 'ffb38206-0eb0-43dd-a61d-b6b6e2e24577 ', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                    sh "docker login -u ${DOCKER_USERNAME} -p ${DOCKER_PASSWORD}"
                    sh "docker push poojabiradar442/hello-world-war:1.0.1"
               }
            }
        } 
        
    }
}
