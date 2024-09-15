
resource "google_kms_key_ring" "this_keyring" {
  name     = var.key_ring_id
  location = var.location
  project = var.project_id
}


resource "google_kms_crypto_key" "this_key" {
  key_ring = google_kms_key_ring.this_keyring.id
  name = var.key_name
  purpose = "ENCRYPT_DECRYPT"
  rotation_period = var.expire_after == null ? null : var.expire_after
  destroy_scheduled_duration = var.destroy_schedule_duration
}


output "key_id" {
  value = google_kms_crypto_key.this_key.id
}


output "key_ring_id" {
  value = google_kms_key_ring.this_keyring.id
}