data "aws_instance" "my_instance" {
  instance_id = var.instance_id
}

output "instance_arn" {
  value = data.aws_instance.my_instance.arn
}

output "instance_tags" {
  value = data.aws_instance.my_instance.tags
}
