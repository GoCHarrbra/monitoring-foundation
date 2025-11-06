foundation = {
  rg_name            = "monitoring-dev-rg"
  law_name           = "monitoring-dev-law"
  location           = "canadacentral"
  law_sku            = "PerGB2018"
  law_retention_days = 30
  law_daily_cap_gb   = -1   # Unlimited
  tags = {
    created_by = "terraform"
    purpose    = "monitoring-foundation"
  }
}
