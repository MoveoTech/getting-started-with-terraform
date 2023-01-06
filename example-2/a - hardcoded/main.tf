provider "aws" {
  region = "us-east-2"
}

data "aws_instance" "my_instance" {
  instance_id = "i-0d86d96f37c62566f"
}

output "instance_arn" {
  value = data.aws_instance.my_instance.arn
}

output "instance_tags" {
  value = data.aws_instance.my_instance.tags
}
