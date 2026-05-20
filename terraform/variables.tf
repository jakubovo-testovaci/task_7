variable "aws_region" {
  description = "aws_region"
  type        = string
  default     = "eu-central-1"
}

variable "project_name" {
  description = "project_name"
  type        = string
  default = "ecs-nginx-demo"
}

variable "image_version" {
  description = "image_version"
  type        = string
  default = "latest"
}