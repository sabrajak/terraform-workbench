# To show the output in CLI
output "sqs_outputs" {
  value = [module.sqs_module.*,module.sqs.*]
}