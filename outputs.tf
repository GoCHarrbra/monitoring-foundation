output "rg_name" {
  value = azurerm_resource_group.monitoring.name
}

output "law_name" {
  value = azurerm_log_analytics_workspace.law.name
}

output "law_id" {
  value = azurerm_log_analytics_workspace.law.id
}

output "location" {
  value = azurerm_resource_group.monitoring.location
}

output "tags" {
  description = "Tags applied to the Monitoring RG/LAW."
  value       = var.tags
}