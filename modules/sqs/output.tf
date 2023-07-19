output "name" {
  value = aws_sqs_queue.terraform_queue.name
}
output "type" {
  value = aws_sqs_queue.terraform_queue.fifo_queue
}
output "content_based_validation" {
  value = aws_sqs_queue.terraform_queue.content_based_deduplication
}