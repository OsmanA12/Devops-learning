terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.73.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
  # Configuration options
}

terraform {
   backend "s3" {
    bucket = "terraform-s3-osman"
    key = "terraform.tfstate"
    region = "eu-west-2"
  }
}
