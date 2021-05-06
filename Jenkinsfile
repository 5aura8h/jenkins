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
          
          sh 'terraform init'
          sh 'terraform plan'
        }      
      }

      stage('TF Apply') {
        steps {
      
          sh 'terraform apply -input=false'
        }
      }
    } 
  }
