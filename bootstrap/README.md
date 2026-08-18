# bootstrap

One-time setup. Creates the GCS bucket used as the remote state backend for
`envs/dev/`. Runs with **local** state (the bucket doesn't exist yet, so it
can't store its own state).

## Run

```bash
cd bootstrap
terraform init
terraform apply \
  -var 'project_id=YOUR_PROJECT_ID' \
  -var 'state_bucket_name=tfstate-<yourname>-healthcare-ai'
```

Note the `state_bucket` output — put it into `envs/dev/backend.tf`.

## Teardown

The state bucket is cheap (pennies). Keep it for the life of the project.
To remove it later: empty the bucket, then `terraform destroy` here (do this
**after** `terraform destroy` in `envs/dev`).
