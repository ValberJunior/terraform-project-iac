terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.2.0"
    }
  }
  # Setando o backend para que ele gerencie o terraform state
  backend "s3" {
    profile = "personal-profile"
    bucket  = "rocketseat-state-bucket-tf"
    region  = "us-east-1"
    key     = "terraform.tfstate"
    encrypt = true
  }

}

provider "aws" {
  profile = "personal-profile"
  region  = "us-east-1"
}

# Criando um bucket para manter o terraform state
resource "aws_s3_bucket" "terraform_state" {
  bucket = var.state_bucket

  # impedir q o recurso seja destruído
  lifecycle {
    prevent_destroy = true
  }
}

# Ativando o versionamento do tfState
resource "aws_s3_bucket_versioning" "terraform_state" {
  bucket = aws_s3_bucket.terraform_state.bucket
  versioning_configuration {
    status = "Enabled"
  }
  depends_on = [aws_s3_bucket.terraform_state]
}
