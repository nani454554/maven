@Library('jenkins-shared-library') _

pipeline {
    agent any
    environment {
        IMAGE = "nani4545/microservice-demo:${env.BUILD_NUMBER}"
    }

    stages {
        stage('Clone') {
            steps {
                git credentialsId: 'github-creds', url: 'https://github.com/your-org/your-java-app.git'
            }
        }
        stage('Build') {
            steps {
                buildJavaApp()
            }
        }

        stage('Docker') {
            steps {
                dockerOps("${IMAGE}")
            }
        }
    }
}
