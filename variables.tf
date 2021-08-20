variable "devops_management" {
  type        = list(string)
  default     = []
  description = "List of DevOpsManagement users"
}

variable "dev_worker" {
  type        = list(string)
  default     = []
  description = "List of developers roles"
}

variable "dev_groups" {
  type        = list(string)
  default     = []
  description = "List of developers role groups"
}

variable "dev_role_name" {
  type        = string
  default     = "Developer"
  description = "Developer role name"
}

variable "additional_roles" {
  type = map(object({
    roles  = list(string)
    arns   = list(string)
    policy = string
  }))

  default     = {}
  description = "Additional roles"
}

variable "external_zone" {
  type        = string
  default     = ""
  description = "External zone name"
}

variable "delegation" {
  type        = map(list(string))
  default     = {}
  description = "External delegation"
}

variable "deploy_dns" {
  type        = bool
  default     = false
  description = "Deploy DNS zone"
}

variable "create_vault" {
  type        = bool
  default     = false
  description = "Create Vault IAM user"
}
