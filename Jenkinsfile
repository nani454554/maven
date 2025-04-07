@Library('jenkins-shared-library') _

pipeline {
    agent any
    environment {
        IMAGE = "nani4545/microservice-demo:${env.BUILD_NUMBER}"
    }

    stages {
        stage('Clone') {
            steps {
                git branch: 'main', credentialsId: 'github-creds', url: 'https://github.com/nani454554/maven.git'
            }
        }
        stage('Build') {
            steps {
                sh 'ls -la'
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
