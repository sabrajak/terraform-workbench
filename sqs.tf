#Create a new queue in AWS SQS
resource "aws_sqs_queue" "terraform_queue" {
  name                        = "terraform-example-queue.fifo"
  fifo_queue                  = true
  content_based_deduplication = true
  #can be modified in a project
  delay_seconds = var.delay_seconds
  # cannot be modified in a project
  max_message_size = local.max_message_size
  tags = {
    track = "osv"
  }
}

locals {
  max_message_size = 2047
}