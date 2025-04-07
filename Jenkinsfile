@Library('jenkins-shared-library') _

pipeline {
    agent any
    environment {
        IMAGE = "nani4545/microservice-demo:${env.BUILD_NUMBER}"
    }

    stages {
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
