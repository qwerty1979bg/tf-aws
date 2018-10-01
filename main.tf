# Define the variables
variable "aws_access_key" {}

variable "aws_secret_key" {}

variable "key_name" {}

# Configure the AWS Provider
provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "us-east-1"
}

# Create a basic server
resource "aws_spot_instance_request" "el_cheapo" {
  ami           = "ami-04681a1dbd79675a5"
  instance_type = "t3.nano"

  key_name = "${var.key_name}"

#  spot_price           = "0.0035"
  wait_for_fulfillment = true
  spot_type            = "one-time"

  root_block_device {
#    device_name           = "/dev/xvda"
    volume_type           = "standard"
    delete_on_termination = true
  }
}

output "connect_here" {
  value = ["${aws_spot_instance_request.el_cheapo.public_ip}"]
}
