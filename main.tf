provider "aws" {
  region = "ca-central-1"
  default_tags {
    tags = var.common_tags
  }
}

module "tfe_node" {
  source                 = "terraform/aws-tfe"
  friendly_name_prefix   = "tfe"
  domain_name            = "distrito18.com"
  tfe_license_secret     = data.aws_secretsmanager.tfe_license
  acm_certificate_arn    = "arn:aws:acm:us-east-1:729039035891:certificate/bcbfe4a1-48c0-414d-9e71-55c66c59fad2"
}