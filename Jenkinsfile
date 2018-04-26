#!/usr/bin/env groovy
pipeline{
    agent{
        docker {
            image 'node:carbon'
            args '-u root'
                }
         }
    
    stages{
    stage('Build') {
        
        steps {
                echo 'Building...'
                sh 'npm install'
                sh 'npm i --save express'
                sh 'npm i --save-dev supertest should mocha'
                 
            }
        /* This builds the actual image; synonymous to
         * docker build on the command line */
        
        //nodetest = docker.build("sheeteshkumarrath/website-test-image")
    }
stage('Run App') {
    
   steps {
           echo 'Running the app...' 
           sh 'node app.js &'
           echo 'App is Running'
        }
    }        
    stage('Test') {
        /* Ideally, we would run a test framework against our image.
         * For this example, we're using a Volkswagen-type approach ;-) */
         
        steps { 
            echo 'Testing the app...'
            //echo 'Switching to new Terminal. Test starting...'
           // sh 'cd test & mocha'
            //sh 'mocha ./test/test.js
//               sh 'x-terminal-emulator'
            sh './node_modules/.bin/_mocha ./test/test.js'
//            sh 'echo "Test Passed"'
 //              sh 'exit'
 //              sh 'exit'
               
        }
    }
      stage('Terminate App') {
          

        steps { 
            echo 'Terminating the App'
            sh 'killall node app.js'
            echo 'App is terminated'
            sh 'exit 127'
        }}
        
  //  stage('Push image') {
        /* Finally, we'll push the image with two tags:
         * First, the incremental build number from Jenkins
         * Second, the 'latest' tag.
         * Pushing multiple tags is cheap, as all the layers are reused. */
    //    docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
    //        webcd.push("${env.BUILD_NUMBER}")
    //        webcd.push("latest")
       // }
   // }
    }}
