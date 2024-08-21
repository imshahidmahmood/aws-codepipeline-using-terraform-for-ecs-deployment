# AWS CodePipeline with Terraform for ECS Deployment

This repository contains Terraform configurations for setting up an AWS CodePipeline that automates the deployment of an application to Amazon ECS. The pipeline consists of three stages: Source, Build, and Deploy.

## Architecture Diagram

![AWS Architecture Diagram](https://github.com/imshahidmahmood/kipina-tf-codepipeline/blob/main/AWS%20CodePipeline%20with%20Terraform%20for%20ECS%20Deployment.drawio.png)

## Project Structure

    ├── .vscode/ # VSCode configurations
    ├── buildspec.yml # CodeBuild build specification
    ├── codebuild.tf # Terraform configuration for AWS CodeBuild
    ├── codecommit.tf # Terraform configuration for AWS CodeCommit
    ├── codepipeline.tf # Terraform configuration for AWS CodePipeline
    ├── ecr.tf # Terraform configuration for AWS ECR (Elastic Container Registry)
    ├── iam_roles.tf # IAM roles and policies for CodePipeline, CodeBuild, and ECS
    ├── outputs.tf # Terraform outputs
    ├── providers.tf # Terraform providers configuration
    ├── s3.tf # S3 bucket for storing pipeline artifacts
    ├── variables.tf # Variable definitions
    └── README.md # Project documentation


## Prerequisites

- AWS CLI configured with appropriate permissions
- Terraform installed on your local machine
- An AWS account with the necessary permissions to create and manage the following services:
  - AWS CodeCommit
  - AWS CodeBuild
  - AWS CodePipeline
  - Amazon ECS
  - Amazon S3
  - AWS IAM


## How It Works
    Source Stage
    AWS CodeCommit is used as the source repository for the application code.
    The pipeline triggers automatically whenever there is a new commit to the specified branch.
    Build Stage
    AWS CodeBuild is used to build and test the application.
    The build specification is defined in the buildspec.yml file.
    Deploy Stage
    The final stage deploys the Docker image to Amazon ECS.
    The ECS service is automatically updated with the new image version.

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/kipina-tf-codepipeline.git
cd kipina-tf-codepipeline
```

### Steps to Deploy

1. **Initialize Terraform**:

    ```bash
    terraform init
    ```

2. **Review the Plan**:
    ```bash
    terraform plan
    ```

3. **Apply the Terraform Configuration**:
    ```bash
    terraform apply
    ```

4. **Cleanup**:
    To remove all resources created by this project, run:
    ```bash
    terraform destroy
    ```

5. **Monitor the Pipeline**
    After applying the Terraform configuration, the AWS CodePipeline will be created and triggered. You can monitor the progress of the pipeline through the AWS Management Console.

## Contributing

Feel free to open issues or submit pull requests if you find any mistake or have suggestions for improvements.
