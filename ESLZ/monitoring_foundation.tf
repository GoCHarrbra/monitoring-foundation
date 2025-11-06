# All fields are required; must be set in foundation.tfvars
variable "foundation" {
  description = "Monitoring foundation (RG + LAW) configuration."
  type = object({
    rg_name            = string
    law_name           = string
    location           = string
    law_sku            = string           # e.g., "PerGB2018"
    law_retention_days = number           # e.g., 30
    law_daily_cap_gb   = number           # set 0 if you don't want a cap
    tags               = map(string)
  })
}

module "foundation" {
  source = "github.com/GoCHarrbra/monitoring-foundation.git?ref=v0.3.0"

  rg_name            = var.foundation.rg_name
  law_name           = var.foundation.law_name
  location           = var.foundation.location
  law_sku            = var.foundation.law_sku
  law_retention_days = var.foundation.law_retention_days
  law_daily_cap_gb = var.foundation.law_daily_cap_gb
  tags               = var.foundation.tags
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

output "location" {
  value       = module.foundation.location
  description = "Location of deployed resource"
}

output "tags" {
  description = "Tags applied to the Monitoring RG/LAW."
  value       = module.foundation.tags
}
