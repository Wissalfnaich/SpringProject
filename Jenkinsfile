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
