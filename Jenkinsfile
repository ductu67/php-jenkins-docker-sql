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
                sh 'docker-compose build --privileged'
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
                sh 'docker-compose up -d --privileged'
            }
        }

        stage ('DAST') {
            steps {
                    sh 'docker run -t owasp/zap2docker-stable zap-baseline.py -t http://127.0.0.1:8001" || true'
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