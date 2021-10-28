AutoCloud GCP Service Account
================================

### Overview

This module provisions an GCP Service Account granting cross account read-only access rights for [AutoCloud](https://autocloud.dev)'s services to ingest your infrastructure.

Refer to the "my account" section of the application or contact your account represetative to obtain the AutoCloud organization ID for your account.

#### Assets created:

* google_service_account - The GCP cross-account Service Account
* google_project_iam_member - Several role attachments linking the cross-account Service Account to the specific permissions allotted
* google_service_account_key - The GCP cross-account Service Account Private Key

#### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| service_account_name | AutoCloud Service Account | `string` | autocloud-read-only| yes |
| project_id | Project ID | `string` | n/a | yes |
| description | Description for the Service Account | `string` | `"AutoCloud cross-account Service Account"` | no |


#### Outputs

| Name | Description |
|------|-------------|
| service_account | Email of the Service Account | `string` | 
| private_key | Private Key of the Service Account | `base64 string` | 