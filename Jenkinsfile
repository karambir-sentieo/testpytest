node{
    stage('Build Docker Image'){
        checkout scm
        dockerimage = docker.build('testpytest:latest')

        echo 'docker image is ready!!!!'
         
        // dockerimage.inside{
        //     echo 'Inside Docker Image'
        //     sh 'python --version'
        //     sh 'pytest --junitxml=test_result.xml || true'
        //     junit 'test_result.xml'
        // }
    }
}