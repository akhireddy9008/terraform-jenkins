pipeline {
  environment {
    Azure_tenant_id='TENANT-ID'
    Azure_subscription_id='SUBSCRIPTION_ID'
    Azure_client_id='CLIENT_ID'
    Azure_client_secret='CLIENT_SECRET'
  }  
agent any
stages {
  stage('Cloning our Git') {
    steps {
      script{
        git 'https://github.com/akhireddy9008/terraform-jenkins.git'
        echo "success"
        }
      }
    }
  stage('log into azure') {
    steps{
      script {
       
         
            echo "stage started"
            az login --service-principal -u Azure_client_id -p Azure_client_secret -t Azure_tenant_id
            az account set -s Azure_subscription_id
            echo "stage ended"
        
        
      }
     }
   }
}
}
