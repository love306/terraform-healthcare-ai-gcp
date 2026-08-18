# Remote state on GCS. Backend config can't use variables — edit the bucket
# name to match the output from `bootstrap/` before running `terraform init`.

terraform {
  backend "gcs" {
    bucket = "REPLACE_WITH_YOUR_STATE_BUCKET" # <-- from bootstrap output
    prefix = "envs/dev"
  }
}
