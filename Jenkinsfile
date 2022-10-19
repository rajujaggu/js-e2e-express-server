pipeline{
    agent {label 'NPM-BUILD'}
     parameters {
        choice(name: 'branch', choices: ['main'], description: 'branch name')
        string(name: 'npm_build', defaultValue: 'build', description: 'npm build')
     }
   
    stages {
        stage ('vcs')
        {
            steps{
              git url: 'https://github.com/rajujaggu/spring-petclinic.git',
                  branch: "${params.branch}"
            }
        }
        stage ('build'){
            steps{
                sh "npm ${params.npm_build}"
            }
        }
}

}