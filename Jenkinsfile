pipeline{
    agent any

    stages{
        stage('Checkout'){
            steps{
                git 'https://github.com/santosh-3120/CI_Practice.git'
            }
        }

        stage('Build'){
            steps{
                echo 'Compiling Java Program'
                sh 'javac HelloWorld.java'
            }
        }
        stage('Docker Build'){
            steps{
                echo 'Building docker image'
                sh 'docker build -t hello-java .'
            }
        }
        stage('Deploy'){
            steps{
                echo 'Running Container...'
                sh 'docker rm -f hello-java-container || true'
                sh 'docker run --name hello-java-container hello-java'
            }
        }
    }
}