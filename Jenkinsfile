pipeline{
    agent {label 'NPM-BUILD'}
     parameters {
        choice(name: 'branch', choices: ['main'], description: 'branch name')
        string(name: 'npm_build', defaultValue: 'install', description: 'npm build')
     }
   
    stages {
        stage ('vcs')
        {
            steps{
              git url: 'https://github.com/rajujaggu/js-e2e-express-server.git',
                  branch: "${params.branch}"
            }
        }
        stage ('build'){
            steps{
                sh "npm ${params.npm_build}"
                sh "npm run build"
            }
        }
}

}