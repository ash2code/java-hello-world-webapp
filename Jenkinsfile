pipeline {
    agent any 

    stages {
        stage("Checkout") {
            steps {
                git branch: 'main', 
                url: 'https://github.com/ash2code/jenkins-lab.git'
            }

        }
        stage("Build") {
            steps {
                sh "mvn clean install"
            }
        }
        stage("Test") {
            steps {
                sh "mvn test"
            }
        }
        stage("Package") {
            steps {
                sh "mvn package"
            }
        }
    }
}
