variable "project_id" {
  type        = string
  description = "Your GCP project ID"
}

variable "region" {
  type    = string
  default = "asia-southeast1" # Singapore — target market
}

variable "state_bucket_name" {
  type        = string
  description = "Globally-unique GCS bucket name for Terraform state (e.g. tfstate-<yourname>-healthcare-ai)"
}
