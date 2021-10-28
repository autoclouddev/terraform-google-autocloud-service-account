# Necessary Roles
locals {
  roles = [
    "roles/iam.securityReviewer",
    "roles/serviceusage.serviceUsageViewer",
    "roles/stackdriver.accounts.viewer",
    "roles/viewer"
  ]
}

# Creating Service Account
resource "google_service_account" "autocloud_service_account" {
  account_id   = var.service_account_name
  display_name = var.service_account_name
  description  = var.description
  project      = var.project_id
  disabled     = "false"
}

# Creating Role Attachements
resource "google_project_iam_member" "autocloud_access_role_attachements" {
  for_each = toset(local.roles)
  member  = "serviceAccount:${google_service_account.autocloud_service_account.email}"
  project = var.project_id
  role    = each.key
}

# Creating Service Account Key
resource "google_service_account_key" "autocloud_key" {
  service_account_id = google_service_account.autocloud_service_account.name
}