output "id" {
  description = "an identifier for the resource with format projects/{{project}}/serviceAccounts/{{account}}/keys/{{key}}"
  value       = google_service_account.autocloud_service_account[0].id
}

output "name" {
  description = "The name used for this key pair"
  value       = google_service_account.autocloud_service_account[0].name
}

output "public_key" {
  description = "The public key, base64 encoded"
  value       = google_service_account_key.autocloud_key[0].public_key
}

output "private_key" {
  description = "The private key in JSON format, base64 encoded, what you normally get as a file when creating service account keys through the CLI or web console"
  value       = google_service_account_key.autocloud_key[0].private_key
  sensitive   = true
}
