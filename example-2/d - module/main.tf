module "instance_data" {
  source      = "../b - variable"
  instance_id = "i-0d86d96f37c62566f"
}

output "instance_arn" {
  value = module.instance_data.instance_arn
}

output "instance_tags" {
  value = module.instance_data.instance_tags
}
