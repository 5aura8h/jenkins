pipeline {
    agent any
    tools {
        "org.jenkinsci.plugins.terraform.TerraformInstallation" "aci_terraform_rhel"
    }
    stages {

        stage('Git Checkout'){
            steps {
                
                    git branch: 'main',
                        url: 'https://github.com/5aura8h/jenkins.git'
                
            }
        }
        stage('Terraform Init'){
            steps {
                
                    
                    sh 'terraform init'
        }
    }
    stage('Terraform Plan'){
            steps {
                
                    
                    sh 'terraform plan'
        }
    }
    stage('Terraform Apply'){
            steps {
                
                    
                    sh 'terraform apply -auto-approve'
        
    }
    }
}
}
