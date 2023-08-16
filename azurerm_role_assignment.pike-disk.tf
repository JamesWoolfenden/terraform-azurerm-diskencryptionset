resource "azurerm_role_assignment" "pike-disk" {
  scope                = azurerm_key_vault.pike.id
  role_definition_name = var.role_definition_name
  principal_id         = azurerm_disk_encryption_set.pike.identity.0.principal_id
}
