# LAW depends on the RG via direct reference (ensures correct creation order)
resource "azurerm_log_analytics_workspace" "law" {
  name                = var.law_name
  location            = var.location
  resource_group_name = azurerm_resource_group.monitoring.name
  sku                 = var.law_sku
  retention_in_days   = var.law_retention_days

  # Daily ingestion cap in GB (set per your tfvars)
  # e.g., 0 to effectively cap at 0 GB, or a positive number like 10
  daily_quota_gb      = var.law_daily_cap_gb

  tags = var.tags
}
