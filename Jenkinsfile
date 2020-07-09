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
 stage('test') {
    steps{
      script {
        batsh """
               mkdir -p akhil akhil1 akhil2
               ls
               echo "here are files i have created for you"
               """
      }
    }
 }
      }
}
