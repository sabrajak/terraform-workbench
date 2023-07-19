#using a local module
module "sqs_module" {
  source        = "../../modules/sqs"
  # Overriding the delay seconds
  delay_seconds = 80
}

#Using an AWS module
module "sqs" {
  source = "terraform-aws-modules/sqs/aws"
  name = "terraform-example-queue-2.fifo"
  fifo_queue = true
  tags = {
    # Assign tag based on terraform workspace. State files will be separate for each workspace (/Users/sabrajak/IdeaProjects/terraform-workbench/osv/dev01/terraform.tfstate.d)
     Environment = lookup(var.environment, terraform.workspace, "not-defined")

  }
}


