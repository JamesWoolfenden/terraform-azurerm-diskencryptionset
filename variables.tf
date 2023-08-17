variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map(any)
}

variable "disk_encryption_set_name" {
  type        = string
  default     = "pike"
  description = ""
}

variable "vault_name" {
  type        = string
  default     = "pike"
  description = ""
}


variable "role_definition_name" {
  type        = string
  default     = "Key Vault Crypto Service Encryption User"
  description = "role definition name"
}

variable "location" {
  type        = string
  description = "resource group location"
}

variable "rg_name" {
  type        = string
  description = "resource group name"
}


variable "key_name" {
  type        = string
  default     = "pike"
  description = ""
}

variable "public_network_access" {
  type    = bool
  default = false
}

variable "allowed_ips" {
  type        = list(any)
  description = "ips/cidr that can access your vault"
  default     = []
}
