#sqs outputs
output "sqs_name" {
  value = aws_sqs_queue.terraform_queue.name
}
output "sqs_type" {
  value = aws_sqs_queue.terraform_queue.fifo_queue
}
output "content_based_validation" {
  value = aws_sqs_queue.terraform_queue.content_based_deduplication
}

### DynamoDB outputs ###
output "dynamodb_cluster_table_name" {
  value = module.dynamodb_osv_database_cluster.dynamodb_table_id
}

output "dynamodb_audit_table_stream_arn" {
  value = module.dynamodb_osv_database_cluster.dynamodb_table_stream_arn
}