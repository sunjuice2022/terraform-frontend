output "www_website_bucket_name" {
  description = "Name (id) of the bucket"
  value       = aws_s3_bucket.www_bucket.id
}

output "root_website_bucket_name" {
  description = "Name (id) of the bucket"
  value       = aws_s3_bucket.root_bucket.id
}

output "cloudfront_domain_name" {
  description = "Cloudfront domain name"
  value       = aws_cloudfront_distribution.www_s3_distribution.domain_name
}

output "domain_name" {
  description = "Website endpoint"
  value       = var.site_domain
}
