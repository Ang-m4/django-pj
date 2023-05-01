pipeline {
    agent any
    stages {
        stage('pylint'){
            steps {
                sh 'pylint ./django-project > /logs/pylint-logs.txt || true'
            }
        }

        stage('deploy'){
            steps {
                sh 'cp -r ./django-project/* /deploy'
            }
        }
    }
}
