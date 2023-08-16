
resource "azurerm_disk_encryption_set" "pike" {
  name                = var.disk_encryption_set_name
  resource_group_name = var.rg_name
  location            = var.location
  key_vault_key_id    = azurerm_key_vault_key.pike.id

  identity {
    type = "SystemAssigned"
  }
}
