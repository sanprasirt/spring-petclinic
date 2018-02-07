pipeline {
    agent none
    stages {
        stage('Maven Install') {
            agent {
                docker {
                    image 'maven:3.5.0'
                    args '-v /root/.m2:/root/.m2'
                }
            }
            steps {
                sh 'mvn -B -DskipTests clean install'
            }
        }
        stage('Docker Build') {
            agent any
            steps {
                sh 'docker build -t ttyvip/spring-petclinic:latest .'
            }
        }
    }
}