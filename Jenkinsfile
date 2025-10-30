pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // ✅ Explicitly specify the branch
                git branch: 'main', url: 'https://github.com/santosh-3120/CI_Practice.git'
            }
        }

        stage('Build') {
            steps {
                echo '🔨 Compiling Java Program...'
                sh 'javac HelloWorld.java'
            }
        }

        stage('Docker Build') {
            steps {
                echo '🐳 Building Docker image...'
                sh 'docker build -t hello-java .'
            }
        }

        stage('Deploy') {
            steps {
                echo '🚀 Running Docker container...'
                // ✅ Stop old container if exists, then run new one
                sh 'docker rm -f hello-java-container || true'
                sh 'docker run -d --name hello-java-container hello-java'
            }
        }
    }
}
