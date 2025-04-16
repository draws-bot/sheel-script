pipeline {
    agent {
        label 'AGENT-1'
    }
    options {
        timeout(time: 30, unit: 'MINUTES')
        disableConcurrentBuilds()
    }   
    stages {
        stage('Build') {
            steps {
                sh 'echo this is build'
            }
        }
        stage('Test') {
            steps {
                sh 'echo this is test'

            }
        }
        stage('Deploy') {
            steps {
                sh """
                sh 06variable.ssh
                sh 09Diskusage.sh
                sudo sh hello-word.ssh
                """
            }
        }
    }
    post { 
        always { 
            echo 'I will always say Hello again!'
           // deleteDir()                                                                           
        }
        success { 
            echo 'I will run when pipeline is success'
        }
        failure { 
            echo 'I will run when pipeline is failure'
        }
    }
}
