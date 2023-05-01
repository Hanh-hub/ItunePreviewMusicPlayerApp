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
                sh 'xcodebuild -workspace "/Users/hanhvo/Documents/Swift Practice New/InterviewPrep Demos/MusicApp/musicApp.xcworkspace" -scheme musicApp -configuration Release -sdk iphoneos archive -archivePath ./build/musicApp.xcarchive'

            }
        }
        stage('Archive') {
            steps {
                sh 'xcodebuild -workspace MusicApp.xcworkspace -scheme MusicApp -configuration Release -sdk iphoneos archive -archivePath ./build/MusicApp.xcarchive'
            }
        }
    }
}

