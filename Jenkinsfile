pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                sh "rm -rf hello-world-war"
                sh "git clone https://github.com/pooja4423/hello-world-war.git"
            }
        }
    }
}
