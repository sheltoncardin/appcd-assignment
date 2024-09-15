variable "location" {
  type        = string
  description = "The GCP region."
  default = "global"
}

variable "project_id" {
  type = string
  description = "ID of the GCP Project"
}

variable "key_name" {
  type = string
  description = "Name of the Key to be created"
}


variable "key_ring_id" {
  type = string
  description = "Name of the key-ring to be created"
}

variable "destroy_schedule_duration" {
  type = number
  default = 30
}

variable "expire_after" {
  type = string
  description = "After how many days should the key expire, Defaults to 90 days"
  default = "7776000s"
}