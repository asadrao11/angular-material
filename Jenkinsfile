pipeline {
  agent any
    
  tools {nodejs "node"}
    
  stages {
        
    stage('Cloning Git') {
      steps {
        git 'https://github.com/asadrao11/angular-material'
      }
    }
        
    stage('Install dependencies') {
      steps {
        sh 'npm install'
      }
    }
     
    stage('build') {
      steps {
         sh 'ng build'

    stage('run') {
      steps {
	 sh 'node server.js'
}

}
      }
    }      
  }
}
