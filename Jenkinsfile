pipeline {
    agent any
    options {
        disableConcurrentBuilds()
    }
    stages {
        stage('Build-beta') {
			when {
                expression {
                    GIT_BRANCH = 'origin/' + sh(returnStdout: true, script: 'git rev-parse --abbrev-ref HEAD').trim()
                    return env.GIT_BRANCH == 'origin/master'
                }
            }
            steps {
// 				sh 'cp -r -n conf.d.tmp/*.* conf.d'
                sh 'docker-compose --build'
            }
        }

        stage('Delivery for beta') {
			when {
                expression {
                    GIT_BRANCH = 'origin/' + sh(returnStdout: true, script: 'git rev-parse --abbrev-ref HEAD').trim()
                    return env.GIT_BRANCH == 'origin/master'
                }
            }
            steps {
                sh 'docker-compose up -d'
            }
        }

    }
    post {
        always {
            dir("${env.WORKSPACE}@tmp") {
                deleteDir()
            }
        }
    }
}