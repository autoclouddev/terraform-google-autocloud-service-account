AutoCloud Google Cloud Service Account Role
===========================================

## Overview

This module provisions an GCP Service Account granting cross account read-only access rights for AutoCloud's services to ingest your infrastructure.

Refer to the "my account" section of the application or contact your account represetative to obtain the AutoCloud organization ID for your account.

## Specifications

* google_service_account - The GCP cross-account Service Account
* google_project_iam_member - Several role attachments linking the cross-account Service Account to the specific permissions allotted
* google_service_account_key - The GCP cross-account Service Account Private Key
