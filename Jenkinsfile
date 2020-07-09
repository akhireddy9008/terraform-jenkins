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
        withCredentials([azureServicePrincipal('azure-service-principal')]) {
       sh """
            az login --service-principal --username $AZURE_CLIENT_ID --password $AZURE_CLIENT_SECRET --tenant $AZURE_TENANT_ID
            az account set -s $AZURE_SUBSCRIPTION_ID
            echo 'success'
            """
    }
 }
 }
 }
   stage('terraform initialization') {
    steps {
      script{
          sh """
                terraform init
                terraform validate
                terraform plan
                terraform apply --auto-approve
                """
        }
      }
    }
  stage('terraform planning') {
    steps {
      script{
          sh """
                terraform plan
                """
        }
      }
    }
  stage('terraform apply') {
    steps {
      script{
          sh """
                terraform apply --auto-approve
                """
        }
      }
    }
      }
}
