pipeline { 
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
 stage('azure login') {
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
  stage('terraform destroy') {
    steps {
      script{
          sh """
                terraform destroy --auto-approve 
              
                """
        }
      }
    }
      }
}
