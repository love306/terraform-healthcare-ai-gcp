variable "project_id" {
  type        = string
  description = "Your GCP project ID"
}

variable "project" {
  type    = string
  default = "healthcare-ai"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "region" {
  type    = string
  default = "asia-southeast1"
}
