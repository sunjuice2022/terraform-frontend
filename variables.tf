variable "aws_region" {
  type        = string
  description = "The AWS region to put the bucket into"
}

variable "site_domain" {
  type        = string
}

variable "bucket_name" {
  type        = string
  description = "linkdevapp-uat-s3"
}
# "The name of the bucket without the www. prefix. Normally domain_name."

variable "common_tags" {
  description = "Common tags you want applied to all components."
}

# The common_tags will be added to all the resources we are creating.
