module "vault_root" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "~> 4.5.0"

  create_user                   = var.create_vault
  name                          = "vault-root"
  force_destroy                 = true
  password_reset_required       = false
  create_iam_user_login_profile = false
  create_iam_access_key         = false
}

resource "aws_iam_user_policy_attachment" "vault_root_admin" {
  count = var.create_vault ? 1 : 0

  user       = module.vault_root.iam_user_name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
