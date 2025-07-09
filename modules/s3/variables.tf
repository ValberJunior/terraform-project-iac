variable "s3_bucket_name" {
  type        = string
  description = "Bucket Name"
}

variable "s3_tags" {
  type        = map(string)
  default     = {}
  description = "S3 Tags"
}
