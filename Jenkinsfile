pipeline {
    agent any

    tools {
        maven 'maven3'
    }

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/Nayakharikrishna/End-to-End'
                sh 'ls -ltr'
            }
        }

        stage('Build Artifact') {
            steps {
                echo 'Building Maven Artifact'
                sh 'mvn clean package'
            }
        }

        stage('SonarQube Analysis') {
    steps {
        echo 'Scanning project'

        withCredentials([
            string(credentialsId: 'sonar-token',
                   variable: 'SONAR_TOKEN')
        ]) {
            sh '''
                mvn org.sonarsource.scanner.maven:sonar-maven-plugin:5.0.0.4389:sonar \
                -Dsonar.host.url=http://54.242.127.93:9000 \
                -Dsonar.token="$SONAR_TOKEN"
            '''
        }
    }
}

        stage('Docker Image') {
            steps {
                sh 'docker build -t hari52/demo:v1-${BUILD_NUMBER} .'
            }
        }

        stage('Push to DockerHub') {
            steps {
                withCredentials([
                    string(credentialsId: 'dockerhub',
                           variable: 'DOCKERHUB_TOKEN')
                ]) {
                    sh '''
                        echo "$DOCKERHUB_TOKEN" | docker login \
                        -u hari52 --password-stdin

                        docker push hari52/demo:v1-${BUILD_NUMBER}
                    '''
                }
            }
        }

        stage('Update Deployment File') {
            steps {
                withCredentials([
                    string(credentialsId: 'githubtoken',
                           variable: 'GITHUB_TOKEN')
                ]) {
                    sh '''
                        git config user.email "nayakrish...@gmail.com"
                        git config user.name "Hari"

                        sed -i "s|image: hari52/demo:.*|image: hari52/demo:v1-${BUILD_NUMBER}|" deployement.yml

                        git add deployement.yml
                        git commit -m "Update deployment image to v1-${BUILD_NUMBER}"

                        git push https://${GITHUB_TOKEN}@github.com/Nayakharikrishna/End-to-End.git HEAD:main
                    '''
                }
            }
        }
    }
}
