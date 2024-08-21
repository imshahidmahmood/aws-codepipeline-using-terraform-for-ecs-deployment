variable "ecr_repository_url" {
  description = "The URL of the ECR repository"
  type        = string
}

variable "ecs_cluster_name" {
  description = "The name of the ECS cluster"
  type        = string
}

variable "ecs_service_name" {
  description = "The name of the ECS service"
  type        = string
}

variable "aws_region" {
  description = "The region of the deployment"
  type        = string
}

variable "repo_name" {
  description = "The name of the repository"
  type        = string
}

variable "branch_name" {
  description = "The name of the branch"
  type        = string
}

variable "aws_account_id" {
  description = "The AWS account ID"
  type        = string
}

