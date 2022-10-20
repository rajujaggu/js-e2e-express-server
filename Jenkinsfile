pipeline{
    agent {label 'NODEJS'}
     stages {
        stage ('vcs')
        {
            steps{
              git url: 'https://github.com/rajujaggu/js-e2e-express-server.git',
                  branch: 'main'
            }
        }
        stage ('build'){
            steps{
                sh "npm install"
                sh "npm run build"
            }
        }
}

}