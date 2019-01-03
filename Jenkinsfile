node{
    stage('Build Docker Image'){
        checkout scm
        def dockerimage = docker.build('testpytest')
        dockerimage.inside{
            echo 'Inside Docker Image'
            sh 'python --version'
        }
    }
}