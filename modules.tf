# Define variables used across modules
variable "location" {}
variable "key_ring_id" {}
variable "key_name" {}
variable "custom_role_name" {}

locals {
  project_id = "your-project-id"
}

# Module for creating an Azure Key Vault Key
module "appcd_1cee0b8c-b9be-595e-aa25-cc334fcf3b64" {
  source      = "./modules/gcp_kms_key"
  key_name    = var.key_name
  key_ring_id = var.key_ring_id
  location    = var.location
  project_id  = local.project_id
}



# Module for creating an Azure Role Definition (spring-petclinic-azure spring-petclinic-init Azure Key Vault Key Role)
module "appcd_3e02d187-d1d0-454d-a826-ddab916b4aaf" {
  source           = "./modules/gcp_role_creation"
  custom_role_name = "role_for_spring_petclinic_azure_spring_petclinic_kms"
  project_id       = local.project_id
  permissions = [
    "cloudkms.cryptoKeyVersions.useToDecrypt",
    "cloudkms.cryptoKeyVersions.useToEncrypt",
    "cloudkms.keyRings.get",
    "cloudkms.keyRings.list",
    "cloudkms.cryptoKeyVersions.get",
    "cloudkms.cryptoKeyVersions.list",
    "cloudkms.cryptoKeys.get",
    "cloudkms.cryptoKeys.list",
  ]
}

# Module for creating an Azure Role Definition (spring-petclinic-azure spring-petclinic-init Azure Storage Container Role)
module "appcd_436edaac-1b5f-4e57-b729-37eaafb8e74e" {
  source           = "./modules/gcp_role_creation"
  custom_role_name = "role_for_spring_petclinic_cloud_storage"
  project_id       = local.project_id
  permissions = [
    "storage.buckets.get",
    "storage.objects.*",
  ]
}

# Module for creating an Azure User Assigned Managed Identity
module "appcd_76da7cb4-51f4-50e6-aae5-618d34eae8b3" {
  source             = "./modules/gcp_serviceaccount"
  service_account_id = "spring-petclinic-sa"
  project_id         = local.project_id

}

module "appcd_e028fb84-ce37-54f0-9e0d-2f31c9ac840d" {
  source      = "./modules/cloud_storage"
  bucket_name = "test-bucket"
  location    = var.location
}

module "role_binding" {
  source     = "./modules/role_binding"
  project_id = local.project_id
  roles = [
    module.appcd_436edaac-1b5f-4e57-b729-37eaafb8e74e.role_id,
    module.appcd_3e02d187-d1d0-454d-a826-ddab916b4aaf.role_id
  ]
  member = "serviceAccount:${module.appcd_76da7cb4-51f4-50e6-aae5-618d34eae8b3.service_account_email}"
}