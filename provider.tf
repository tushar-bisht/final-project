terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.34.0"
    }
  }
  backend "s3" {
    bucket = "tushar-final-project"
    key    = "tushar-final-project/terraform.tfstate"
    region = "us-east-1"
  }

}

provider "aws" {
  region = "us-east-1"
  # Configuration options
}
