variable "service_account_id" {
  type        = string
  description = "Service Account ID to be created"
}

variable "service_account_name" {
  type        = string
  description = "Name to give the service account, defaults to service account ID"
  default     = null
}

variable "project_id" {
  type = string
}


variable "description" {
  type        = string
  description = "Description for Service Account Name"
  default     = null
}