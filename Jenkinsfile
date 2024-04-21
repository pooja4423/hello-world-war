 properties([
                        parameters([
                            choice(
                                choices: ['package', 'compile'], 
                                name: 'arg'
                            ),
                            string(
                                defaultValue: 'clean', 
                                name: 'version', 
                                trim: true
                            )
                        ])
                    ])

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
