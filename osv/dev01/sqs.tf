/*
module "sqs_module" {
  source        = "../../modules/sqs"
  # Overriding the delay seconds
  delay_seconds = 80
}
*/

module "sqs" {
  source  = "aws-ia/sqs/aws"
  version = "0.0.1"
  # insert the 12 required variables here
}

/*# To show the output in CLI
output "sqs_module_outputs" {
  value = module.sqs_module.sqs_outputs
}*/

