# Terraform Template for Creating an EC2 Instance in a Public Subnet on AWS

This Terraform template is designed to create an EC2 instance using the default Ubuntu Server 20.04 AMI from AWS in a public subnet with an elastic IP.

## Configuration

Before executing this template, you will need to edit some configuration files:

- `variables.tf`: Edit this file to adjust the default values of the variables used in the template.
- `terraform.tfvars`: This file is used to specify the variables that will be used during the creation process. Be sure to replace the project name and environment according to your configuration.
- `provider-main.tf`: Change the name of the project workspace to avoid conflicts with other projects in your account.
- `ec2.tf`: In this file, you can create or remove permissions in the security group used by the EC2 instance.

## Execution

To execute the template, run the following commands in the root folder of the project:

`terraform init`
`terraform validate`
`terraform plan`
`terraform apply`

This will initialize Terraform, verify the configuration, and create the EC2 instance in your AWS account with an elastic IP.

If you want to destroy the EC2 instance, run the command:

`terraform destroy`

This will destroy all resources created by the template.

## Warning

Extreme attention to variables and the workspace of your new project.
