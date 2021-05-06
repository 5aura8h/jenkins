pipeline {
    agent any

    stages {
      stage('Get TF Code') {
        steps {
          git branch: 'main',
              url: 'https://github.com/5aura8h/jenkins.git'
        }
      }

      stage('TF Init&Plan') {
        steps {
          
          sh 'sudo terraform init'
          sh 'sudo terraform plan'
        }      
      }

      stage('TF Apply') {
        steps {
      
          sh 'sudo terraform apply -input=false'
        }
      }
    } 
  }
