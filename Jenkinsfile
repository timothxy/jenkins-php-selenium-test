pipeline {
	agent none
	stages {
		stage('Integration UI Test') {
			parallel {
				stage('Deploy') {
					agent any
					steps {
						sh "chmod +x -R ${env.WORKSPACE}"
						sh './jenkins/scripts/deploy_fixed.sh'
						input message: 'Finished using the web site? (Click "Proceed" to continue)'
						sh './jenkins/scripts/kill_fixed.sh'
					}
				}
				stage('Headless Browser Test') {
					agent {
						docker {
							image 'maven:3-alpine' 
							args '-v /root/.m2:/root/.m2' 
						}
					}
					steps {
						sh 'mvn -B -DskipTests clean package'
						sh 'mvn test'
					}
					post {
						always {
							junit 'target/surefire-reports/*.xml'
						}
					}
				}
			}
		}
	}
}
