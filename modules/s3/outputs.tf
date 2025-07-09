output "bucket_domain_name" {
  value       = data.aws_s3_bucket.s3_bucket.bucket_domain_name
  sensitive   = false
  description = "S3 bucket domain name"
}

output "bucket_id" {
  value       = data.aws_s3_bucket.s3_bucket.id
  sensitive   = false
  description = "S3 bucket Id"
}
