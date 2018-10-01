# Terraform AWS example

This repository contains terraform code that creates a simple AWS EC2 instance

## Prerequisites:
AWS account
SSH Keypair

## Usage

1. [Install Terraform](https://www.terraform.io/intro/getting-started/install.html)
2. Clone this repository and `cd` into it.
3. Run the following:

```
$ export TF_VAR_aws_access_key=<YOUR AWS ACCESS KEY>
$ export TF_VAR_aws_secret_key=<YOUR AWS SECRET KEY>
$ export TF_VAR_key_name=<THE NAME OF YOUR SSH KEY>
$ terraform init
$ terraform apply
$ terraform destroy
```
