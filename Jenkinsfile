#Jenkinsfile

pipeline {
   agent any 
     stages {
        stage('checkout') {
           git branch: main, url:https://github.com/priyanka235262/Weba-Application-Deployment
             }
     }
  stage('Build Image') {
    steps {
       script { 
          def imageName = "your-docker-registry/your-image-name:${BUILD_NUMBER}
          sh "docker build - t ${imageName} ."
          sh "docker push ${imageName}
       }
    }

  }
  stage('Deploy to K8') {
    steps {
       withCredentials([kubeconfigFile(credentialsId: 'your-k8-credentails')]) {
         sh 'kubectl set image deployment/your-deployment-name your-container-name=${env.IMAGE_NAME} -n your-namespace"
       }
    }
  }

}
}
post {
   success {
     echo "pipeline build successfully!"
   } 
  failure {
    echo "Pipeline failed!"
  }
  
    
