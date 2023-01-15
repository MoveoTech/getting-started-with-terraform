terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region     = "us-east-2"
  access_key = "my-access-key"
  secret_key = "my-secret-key"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0a606d8395a538502"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
