data "azurerm_client_config" "current" {}

resource "azurerm_key_vault_key" "pike" {
  #checkov:skip=CKV_AZURE_112:hsm are expensive
  name            = var.key_name
  key_vault_id    = azurerm_key_vault.pike.id
  key_type        = "RSA"
  key_size        = 2048
  expiration_date = time_offset.expire_key.rfc3339

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

resource "time_offset" "expire_key" {
  offset_years = 1
}
