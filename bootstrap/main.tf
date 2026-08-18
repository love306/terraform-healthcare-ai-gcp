# bootstrap/ — one-time setup, runs with LOCAL state.
# Creates the GCS bucket that envs/dev/ then uses as its remote backend.
# (The GCS backend does state locking natively — no separate lock table needed.)

terraform {
  required_version = ">= 1.5"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_storage_bucket" "tfstate" {
  name                        = var.state_bucket_name
  location                    = var.region
  force_destroy               = false
  uniform_bucket_level_access = true

  versioning {
    enabled = true
  }
}

output "state_bucket" {
  value = google_storage_bucket.tfstate.name
}
