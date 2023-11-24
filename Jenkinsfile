pipeline {
    agent {
        dockerfile {
            args '--user root --privileged'
                   reuseNode true
}

}

    environment {
       AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
       AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

    stages {
        stage('Git Clone') {
            steps {
                echo "-------------Git Clone-----------"
                sh "pwd"
                git branch: 'main', url: 'https://github.com/fasil916/cicdpipline.git'
            }
        }

        stage('Terraform Init') {
            steps {
                echo "----------terraform init------------"
                script {
                    sh "pwd"
                    sh 'terraform init'
                }
            }
        }
        
        
        
        stage('Terraform plan') {
            steps {
                echo "----------terraform plan------------"
                script {
                    sh 'terraform plan'
                }
            }
        }
        
        stage('Terraform apply') {
            steps {
                echo "----------terraform apply------------"
                script {
                    sh 'terraform apply -auto-approve'
                }
            }
        }
        
        
    }
}
