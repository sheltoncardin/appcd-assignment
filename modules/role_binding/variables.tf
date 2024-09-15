variable "project_id" {
	type = string
}

variable "roles" {
	type = list(string)
	description = "List of roles to provide"
}

variable "member" {
	type = string
	description = "Email ID of the member that the access will be provided"
	
}