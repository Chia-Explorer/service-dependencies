variable "repo_name" {
  type        = string
  description = "Name of ECR repo to be created for the service"
}

variable "role_name" {
  type        = string
  description = "Name of IAM role to be created for the service"
}

variable "immutable" {
  type        = string
  default     = true
  description = "Whether ECR should be immutable"
}

variable "scan_on_push" {
  type        = string
  default     = true
  description = "Whether images should be scanned on push to ECR"
}
