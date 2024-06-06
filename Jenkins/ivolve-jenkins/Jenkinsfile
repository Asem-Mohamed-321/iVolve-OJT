@Library('shared-library')_
pipeline {
    agent {
        label 'sandbox'
        
    }
    stages{
        stage (DockerBuild){
        steps{
                                 buildDockerImage("ivolveimg")  
            }
        }

        stage(Dockerpush){
            steps{
                                pushDockerImage("ivolveimg")
            }
        }

        stage(OpenshiftDeployment){
            steps{
                                openshiftDeployment()
            }
        }
    }
    
}
