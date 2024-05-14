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
                sh "mvn clean package"
            }
        } 
    }
}

