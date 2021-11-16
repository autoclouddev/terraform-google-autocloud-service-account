# Local variables
locals {

  roles = [
    "roles/viewer"
  ]

}

# Creating Service Account
resource "google_service_account" "autocloud_service_account" {
  count = var.enabled ? 1 : 0

  account_id   = var.name
  display_name = var.name
  description  = var.description
  project      = var.project_id
  disabled     = "false"
}

# Creating Role Attachements
resource "google_project_iam_member" "autocloud_access_role_attachements" {
  for_each = var.enabled != true ? [] : toset(local.roles)

  project = var.project_id
  member  = "serviceAccount:${google_service_account.autocloud_service_account[0].email}"
  role    = each.key

}

# Creating Service Account Key
resource "google_service_account_key" "autocloud_key" {
  count = var.enabled ? 1 : 0

  service_account_id = google_service_account.autocloud_service_account[0].name
}
