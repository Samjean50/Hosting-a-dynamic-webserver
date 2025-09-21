provider "aws" {
  region = "us-east-1" # Change to your preferred region
}

module "ecr" {
  source          = "./modules/ecr"
  repository_name = "your-webapp-repo"
  force_delete    = false  # ← ADD THIS LINE
}

module "ecs" {
  source             = "./modules/ecs"
  ecr_repository_url = module.ecr.repository_url
}

# main.tf (add this at the bottom)
output "repository_url" {
  description = "The URL of the ECR repository"
  value       = module.ecr.repository_url
}