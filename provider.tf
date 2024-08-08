# configure aws provider
provider "aws" {
  region  = var.region
}

# configure backend
terraform {
  backend "s3" {
    bucket         = "terra-learn-bucket"
    key            = "eks.terraform.tfstate"
    region         = "ap-south-1"
    
  }
}
