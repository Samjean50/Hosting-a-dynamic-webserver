variable "repository_name" {
  description = "Name of the ECR repository"
  type        = string
}

variable "force_delete" {
  description = "Force delete the repository even if it contains images"
  type        = bool
  default     = false
}

resource "aws_ecr_repository" "webapp" {
  name         = var.repository_name
  force_delete = var.force_delete  # ← ADD THIS LINE
}

output "repository_url" {
  value = aws_ecr_repository.webapp.repository_url
}