variable "enabled" {
  type        = bool
  default     = true
  description = "A boolen indicating whether or not to create the modules resources"
}

variable "description" {
  type        = string
  default     = "AutoCloud Service Account"
  description = "Description to display in the Google Cloud console for this service account"
}

variable "name" {
  type        = string
  default     = "autocloud-read-only"
  description = "Name of the service account"
}

variable "project_id" {
  type        = string
  description = "Google Cloud project ID to associate the service account with"
}

variable "roles" {
  type = list(string)
  default = [
    "roles/iam.securityReviewer",
    "roles/serviceusage.serviceUsageViewer",
    "roles/stackdriver.accounts.viewer",
    "roles/viewer"
  ]
  description = "A list of IAM roles to attach to the service account, defaults to the set required for optimal functionality."
}
