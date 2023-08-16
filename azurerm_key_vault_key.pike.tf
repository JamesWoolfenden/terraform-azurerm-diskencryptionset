data "azurerm_client_config" "current" {}

resource "azurerm_key_vault_key" "pike" {
  name         = "des-example-key"
  key_vault_id = azurerm_key_vault.pike.id
  key_type     = "RSA"
  key_size     = 2048

  depends_on = [
    azurerm_key_vault_access_policy.pike-user
  ]

  key_opts = [
    "decrypt",
    "encrypt",
    "sign",
    "unwrapKey",
    "verify",
    "wrapKey",
  ]
}
