provider "aws" {
  region = var.region
  default_tags {
    tags = var.common_tags
  }
}

data "aws_secretsmanager_secret" "tfe_license" {
  name = "tfe_license"
}

module "tfe_node" {
  source               = "./terraform/aws-tfe"
  friendly_name_prefix = var.friendly_name_prefix
  domain_name          = var.domain_name
  tfe_license_secret   = data.aws_secretsmanager_secret.tfe_license
  acm_certificate_arn  = var.acm_certificate_arn
}