variable "region" {
  description = "AWS Region where resources are deployed to."
}

variable "common_tags" {
  default = {
    Environment = "Test"
    Owner       = "TBD"
    Project     = "TFE"
  }
  description = "Common Tags for TFE"
  type        = map(string)
}

variable "domain_name" {
  description = "Domain for creating the Terraform Enterprise subdomain on."
}

variable "friendly_name_prefix" {
  description = "Prefix for tagging/naming AWS resources"
}

variable "acm_certificate_arn" {
  description = "ARN for ACM cert to be used with load balancer"
}


