#This file holds configuration for AWS

provider "aws" {
  region     = var.AWS_DEFAULT_REGION
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
  version = "~> 2.0"
}

resource "aws_instance" "gtt_websvr" {
 ami = "ami-088ff0e3bde7b3fdf"
 instance_type = "t2.micro"
}
