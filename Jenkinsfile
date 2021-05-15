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
        sh '''
           npm start
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
