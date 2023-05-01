pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            steps {
                sh 'xcodebuild -workspace musicApp.xcworkspace -scheme musicApp -configuration Release -sdk iphoneos build'
            }
        }
        stage('Archive') {
            steps {
                sh 'xcodebuild -workspace musicApp.xcworkspace -scheme musicApp -configuration Release -sdk iphoneos archive -archivePath ./build/musicApp.xcarchive'
            }
        }
    }
}
