resource "azurerm_key_vault" "pike" {
  #checkov:skip=CKV2_AZURE_32:todo
  name                          = var.vault_name
  location                      = var.location
  resource_group_name           = var.rg_name
  tenant_id                     = data.azurerm_client_config.current.tenant_id
  sku_name                      = "premium"
  enabled_for_disk_encryption   = true
  purge_protection_enabled      = true
  public_network_access_enabled = var.public_network_access


  network_acls {
    default_action = "Deny"
    bypass         = "AzureServices"
  }
}
