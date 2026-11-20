terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_s3_bucket" "chandan-tutedude" {
  bucket = "chandan-bucket-243"
  acl = "private"
  
}

resource "aws_instance" "web-tutedude" {
  ami           = "ami-02f853b31ccb5871f"
  instance_type = "t3.micro"

  tags = {
    Name = "Web-Server"
  }
  key_name = "mykey"
}

