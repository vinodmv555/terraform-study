terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27" #optiional     
    }
  }
  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "ap-south-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-079b5e5b3971bd10d"
  instance_type = "t2.micro"
  tags = {
    name = "ExampleAppServerInstance"
  }

}