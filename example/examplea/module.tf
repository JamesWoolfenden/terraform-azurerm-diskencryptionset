module "disk_encryption_set" {
  source      = "../../"
  common_tags = var.common_tags
  location    = "uk south"
  rg_name     = "pike"
}
