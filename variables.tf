#sqs
variable "delay_seconds" {
  default = 90
}

#dynamodb
variable "rds_clusters" {
  description = "RDS clusters name"
  type        = list(string)
  default     = ["campus-network", "cloud-network"]
}











/*
Way 1 to implement variables:

A Terraform variable file is a text file that contains a list of variables that can be used in your Terraform configuration. The file has the extension .tfvars or .tfvars.json.

The format of a Terraform variable file is as follows:
variable_name = value
For example, the following variable file defines a variable called instance_name with the value my-instance:

instance_name = my-instance

To use a variable in your Terraform configuration, you can simply reference the variable name in your code. For example, the following code creates an AWS EC2 instance with the name specified by the instance_name variable:

resource "aws_instance" "my_instance" {
ami = "ami-0123456789abcdef0"
instance_type = "t2.micro"
name = "${var.instance_name}"
*/

/*
Way 1 to implement variables according to the environments:

1. create 2 files, one for dev : dev.tfvars and another one for test : test.tfvars
2. Pass the variable file name dynamically : terraform plan/apply -var-file=dev.tfvars
*/

/*
Way 2 to implement variables according to the environments:
  This can be achieved by using terraform workspace and map function in variables as we implemented above
*/
