resource "google_service_account" "service_account" {
  account_id   = var.service_account_id
  display_name = var.service_account_name == null ? var.service_account_id : var.service_account_name
  project = var.project_id
  description = var.description

}


output "service_account_email" {
  value = google_service_account.service_account.email
}