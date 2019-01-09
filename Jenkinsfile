node{
    stage('Build Docker Image'){
        checkout scm
        // dockerimage = docker.build('testpytest:latest')

        // echo 'docker image is ready!!!!'
         
        // dockerimage.inside{
        //     checkout scm
        //     sh 'ls'
        //     echo 'Inside Docker Image'
        //     sh 'python --version'
        //     sh 'pytest --junitxml=test_result.xml || true'
        //     junit 'test_result.xml'
        // }

        def BRANCH_NAME = env.BRANCH_NAME
        def CHANGE_ID = env.CHANGE_ID
        echo "Jenkins is started BRANCH_NAME-${BRANCH_NAME}, CHANGE_ID-${CHANGE_ID}"
    }
}