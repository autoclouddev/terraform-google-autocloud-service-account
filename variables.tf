variable "service_account_name" {
  type        = string
  default     = "autocloud-read-only"
  description = "Name of the Service Account"
}

variable "project_id" {
  type        = string
  default     = ""
  description = "Project ID"
}
variable "description" {
  type        = string
  default     = "AutoCloud cross-account Service Account"
  description = "Description for the Service Account"
}
