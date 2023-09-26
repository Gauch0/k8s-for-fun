locals {
  environment = var.environment
  owners = var.prefix
  name = "${var.prefix}-${var.environment}"
  common_tags = {
    environment = local.environment
    owners = local.owners
  }
  eks_cluster_name = "${local.name}-${var.cluster_name}"
}