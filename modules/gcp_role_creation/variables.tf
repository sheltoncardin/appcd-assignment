variable "custom_role_name" {
  type = string
  description = "Name for the custom role, should be lowercaps and only underscores allowed"
}

variable "custom_role_title" {
  description = "Title for the Role to be displayed on IAM page, defaults to role_name"
  type = string
  default = null
}

variable "custom_role_description" {
  description = "Description for the custom role created"
  type = string
  default = null
}

variable "permissions" {
  type = list(string)
  description = "List of permissions to be attached as part of the custom role"
}

variable "project_id" {
  type = string
}