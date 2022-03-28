pipeline {
  agent {
    kubernetes {
      yaml '''
        apiVersion: v1
        kind: Pod
        spec:
          containers:
          - name: checkov
            image: bridgecrew/checkov
            command:
            - cat
            tty: true
        '''
    }
  }
  stages {
    stage('checkov scan'){
        steps{
             container('checkov'){
sh 'checkov --directory "/home/jenkins/agent/workspace/jenkinsfile_main"'
    }
        }
    }
    }
  }
