pipeline {
    agent any
    tools {
        maven 'M2_HOME'
    }
    stages {
        stage('Sonarqube scan') {
            agent {docker { image 'maven:3-amazoncorretto-17-debian' }}
            steps {
                script {
                    def mavenHome = tool 'M2_HOME'
                    withEnv(["PATH+MAVEN=${mavenHome}/bin"]) {
                        withSonarQubeEnv('sonarQube') {
                            sh 'mvn verify org.sonarsource.scanner.maven:sonar-maven-plugin:sonar -Dsonar.projectKey=asiamahy2g_test-java'
                        }
                    }
                }
            }
        }

        stage('All Maven commands') {
            steps {
                sh 'mvn clean compile install package'
            }
        }

        stage('Upload artifact to Jfrog') {
            steps {
                script {
                    sh 'curl -uadmin:AP4y6DmdHPZsNpu4PoxakusUxFz -T target/bio*.jar "http://44.211.213.102:8081/artifactory/geoapp/"'
                }
            }
        }

        stage('Image build') {
            steps {
                sh 'aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 540738452774.dkr.ecr.us-east-1.amazonaws.com'
                sh 'docker build -t geoapp-test .'
            }
        }

        stage('Push image') {
            steps {
                sh 'docker tag geoapp-test:latest 540738452774.dkr.ecr.us-east-1.amazonaws.com/geoapp-test:latest'
                sh 'docker push 540738452774.dkr.ecr.us-east-1.amazonaws.com/geoapp-test:latest'
            }
        }
    }
}
