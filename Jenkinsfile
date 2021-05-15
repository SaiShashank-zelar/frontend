pipeline {
  agent {
    label 'todoapp'
  }
  stages {
    stage('Download Dependencies') {
      steps {
        sh '''
           npm install
        '''
        sh '''
           npm run build
        '''
      }

    }

    stage('prepare artifacts') {
      steps {
        sh '''
           zip -r ../frontend.zip node_modules dist
        '''
      }
    }
  }
}
