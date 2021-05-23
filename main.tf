module "secret_manager" {
  for_each = var.secret_manager_config
  source   = "./modules/secret_manager"

  project_id         = var.project_id
  region             = var.region
  environment        = var.environment
  secret_id          = each.key
  secret_manager_iam = lookup(each.value, "secret_manager_iam", {})
}
