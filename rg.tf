resource "azurerm_resource_group" "monitoring" {
  name     = var.rg_name
  location = var.location
  tags     = var.tags
}
