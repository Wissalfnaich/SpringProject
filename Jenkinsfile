pipeline {
    agent any
    tools {
        maven 'Maven-3.9'
    }
        
    stages {
        stage("build jar") {
            steps {
               echo "building the application..."
                sh 'mvn package'
            }
        }
         stage("build image") {
            steps {
               echo "building the docker image..."
               withCredentials([usernamePassword(credentialsId: 'docker-hub-repo', passwordVariable: 'PASS', usernameVariable: 'USER')]){
               sh 'docker build -t 
               }
            }
        }
         stage('test') {
            steps {
               echo 'testing'
            }
        }
         stage('deploy') {
            steps {
               echo 'deploing'
            }
        }
    }
    
}
