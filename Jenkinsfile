pipeline {
    agent any

    stages {
      stage('Download TF script') {
        steps {
          git branch: main,
              url: 'https://github.com/5aura8h/jenkins.git'
        }
      }

      stage('TF Init') {
        steps {
          
          sh 'terraform init'
         
        }      
      }
      stage('TF Plan') {
        steps {
          
          sh 'terraform plan'
        }      
      }   
      stage('Request Approval') {
        steps {
          script {
            def userInput = input(id: 'confirm', message: 'Apply Terraform?', parameters: [ [$class: 'BooleanParameterDefinition', defaultValue: false, description: 'Apply terraform', name: 'confirm'] ])
          }
        }
      }
      
      stage('TF Apply') {
        steps {
      
          sh 'terraform apply -auto-approve' 
        }
      }
    } 
  }
