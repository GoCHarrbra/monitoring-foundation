resource "azurerm_log_analytics_workspace" "law" {
  name                = "${var.prefix}-law"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name

  sku               = "PerGB2018"
  retention_in_days = var.retention_in_days

  # (Optional) uncomment if you want to cap ingestion
  # daily_quota_gb = 0   # 0 means unlimited

  tags = var.tags
}
