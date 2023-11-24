resource "azurerm_resource_group" "this" {
  name     = "defaultrg"
  location = "westeurope"
}


resource "azurerm_storage_account" "storage" {
  for_each                 = toset(var.account_names)
  name                     = each.value
  resource_group_name      = azurerm_resource_group.this.name
  location                 = azurerm_resource_group.this.location
  account_replication_type = "LRS"
  account_tier             = "Standard"
}
