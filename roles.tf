module "roles" {
  source = "github.com/global-devops-terraform/user-roles?ref=v1.22.0"

  devops_roles          = var.devops_management
  devops_role_groups    = ["Teams-DevOps"]
  developer_roles       = var.dev_worker
  developer_role_groups = var.dev_groups
  developer_role_name   = var.dev_role_name
  additional_roles      = var.additional_roles
}
