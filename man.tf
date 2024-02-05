resource "azurerm_storage_account" "example" {
    for_each = var .shubh_sc
  name                     = each.value.name
  resource_group_name      = each.value.rg
  location                 = each.value.name
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}