variable "origin_id" {
  type        = string
  sensitive   = false
  description = "S3 Id"
}

variable "bucket_domain_name" {
  type        = string
  sensitive   = false
  description = "S3 bucket domain name"
}

variable "cdn_price_class" {
  type        = string
  default     = "PriceClass_200"
  description = "CDN Price Class"
}

variable "cdn_tags" {
  type        = map(string)
  default     = {}
  description = "Cloudfront tags"
}
