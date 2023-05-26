terraform {
  backend "s3" {
    dynamodb_table = "terra_backend_lock"
    bucket         = "terraform-2023-backend"
    key            = "lesskey"
    region         = "ap-south-1"
  }
}