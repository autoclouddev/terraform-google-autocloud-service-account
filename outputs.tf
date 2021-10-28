output "service_account" {
  value       = google_service_account.autocloud_service_account.email
}

output "private_key" {
  value       = google_service_account_key.autocloud_key.private_key
}

