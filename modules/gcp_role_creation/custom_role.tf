resource "google_project_iam_custom_role" "this" {
  project = var.project_id
  role_id     = var.custom_role_name
  title       = var.custom_role_title == null ? var.custom_role_name : var.custom_role_title
  description = var.custom_role_description == null ? var.custom_role_name : var.custom_role_description
  permissions = var.permissions
}


output "role_id" {
  value = google_project_iam_custom_role.this.role_id
}

output "id" {
  value = google_project_iam_custom_role.this.id
}