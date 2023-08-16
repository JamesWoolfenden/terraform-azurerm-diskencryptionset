resource "azurerm_key_vault_access_policy" "pike-disk" {
  key_vault_id = azurerm_key_vault.pike.id

  tenant_id = azurerm_disk_encryption_set.pike.identity.0.tenant_id
  object_id = azurerm_disk_encryption_set.pike.identity.0.principal_id

  key_permissions = [
    "Create",
    "Delete",
    "Get",
    "Purge",
    "Recover",
    "Update",
    "List",
    "Decrypt",
    "Sign",
  ]
}
