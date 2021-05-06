pipeline {
    agent none

    stages {
      stage('Download TF script') {
          agent {
              label 'master'
          }
        steps {
          git 'https://github.com/5aura8h/jenkins.git'
        }
      }

      stage('TF Init') {
          agent {
                label 'mac'
            }
        steps {
           sh 'cd /Users/saukotha/Documents/cisco/devnet/jenkins/data/jobs/sample-pipeline'         
           sh 'terraform init'
         
        }      
      }
      stage('TF Plan') {
          agent {
                label 'mac'
            }
        steps {
          sh 'cd /Users/saukotha/Documents/cisco/devnet/jenkins/data/jobs/sample-pipeline'         
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
          agent {
                label 'mac'
            }
        steps {
          sh 'cd /Users/saukotha/Documents/cisco/devnet/jenkins/data/jobs/sample-pipeline'           
          sh 'terraform apply -auto-approve'
        }
      }
    } 
  }
