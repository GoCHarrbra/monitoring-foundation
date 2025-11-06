# Mirror the module's inputs at the root so tfvars can set them.
variable "rg_name" {
  type = string
}

variable "law_name" {
  type = string
}

variable "location" {
  type = string
}

variable "law_sku" {
  type = string
}

variable "law_retention_days" {
  type = number
}

variable "tags" {
  type = map(string)
}

module "foundation" {
  source = "github.com/GoCHarrbra/monitoring-foundation.git?ref=v0.2.0"

  rg_name            = var.rg_name
  law_name           = var.law_name
  location           = var.location
  law_sku            = var.law_sku
  law_retention_days = var.law_retention_days
  tags               = var.tags
}

# (Optional) surface key outputs from the module
output "rg_name" {
  value       = module.foundation.rg_name
  description = "Monitoring Resource Group name."
}

output "law_name" {
  value       = module.foundation.law_name
  description = "Log Analytics Workspace name."
}

output "law_id" {
  value       = module.foundation.law_id
  description = "Log Analytics Workspace resource ID."
}
