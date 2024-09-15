resource "azurerm_storage_container" "this" {
  name                  = var.container_name
  storage_account_name  = var.storage_account_name
  container_access_type = var.container_access_type
}

output "storage_container_id" {
  value = azurerm_storage_container.this.id
}


output "id" {
  value = azurerm_storage_container.this.resource_manager_id
}
