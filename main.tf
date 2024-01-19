terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.31.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

module "example1" {
  source      = "github.com/rbansal007/terraform-aws-nocode//mymodule"
  region      = "ap-south-1"
  bucket_name = "18thexample1-bucket"
  
}

output "local_module_bucket_id" {
  value = module.example1.bucket_id
}



