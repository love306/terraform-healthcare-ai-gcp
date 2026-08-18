# envs/dev — wires the modules together. W1 only stands up the network.
# W2 adds modules/gke, W3 modules/database (Cloud SQL), W4 modules/observability.

module "network" {
  source = "../../modules/network"

  name   = "${var.project}-${var.environment}"
  region = var.region
}
