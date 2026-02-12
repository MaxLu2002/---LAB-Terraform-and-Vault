
provider "vault" {
  address = var.vault_address
}

data "vault_generic_secret" "sa_gcp_key" {
  path = "gcp/token/${var.sa_name}"
}

provider "google" {
  project     = var.project_id
  region      = var.region

  access_token = data.vault_generic_secret.sa_gcp_key.data["token"]
}

terraform {
  required_version = "~> 1.14.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.15.0" 
    }

    vault = {
      source  = "hashicorp/vault"
      version = "~> 4.6.0"
    }
  }
}