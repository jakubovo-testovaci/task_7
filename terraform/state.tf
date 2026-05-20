terraform {
  backend "s3" {
    bucket  = "ecs-nginx-demo-20260520" # Nahraďte názvem vašeho S3 bucketu
    key     = "ecs-demo/terraform.tfstate"
    region  = "eu-central-1"
    encrypt = true
  }
}