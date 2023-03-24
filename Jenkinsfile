pipeline {
    agent any
    tools {
        maven 'Maven-3.9'
        docker 'Docker'
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
               sh 'docker build -t wissaaal/my-repo:jma-0.0 .'
               sh "echo $PASS | docker login -u $USER --password-stdin"
               sh 'docker push wissaaal/my-repo:jma-0.0'
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
