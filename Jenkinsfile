node{
    stage('Build Docker Image'){
        checkout scm
        def dockerimage = docker.build('testpytest:latest')
        dockerimage.inside{
            echo 'Inside Docker Image'
            sh 'python --version'
            sh 'pytest --junitxml=test_result.xml || true'
            junit 'test_result.xml'
        }
    }
}