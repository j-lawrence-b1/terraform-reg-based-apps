output "s3_bucket_id" {
  description = "S3 bucket id"
  value       = module.s3_backend.s3_bucket_id
}

output "s3_locking_table" {
  description = "S3 bucket id"
  value       = module.s3_locking_table.dynamodb_table_id
}
