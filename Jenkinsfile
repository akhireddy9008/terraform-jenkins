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
        echo "here are files i have started created for you"
        sh 'ls -l'
    dir ('foo') {
        writeFile file:'dummy', text:''
    }
    sh 'ls -l'
      }
    }
 }
      }
}
