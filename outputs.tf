output "vault" {
  value = azurerm_key_vault.pike
}

output "disk-policy" {
  value = azurerm_key_vault_access_policy.pike-disk
}

output "user-policy" {
  value = azurerm_key_vault_access_policy.pike-user
}

output "key" {
  value = azurerm_key_vault_key.pike
}

output "set" {
  value = azurerm_disk_encryption_set.pike
}
