# Terraform AWS CloudWatch EC2 Alarm

This repository contains a Terraform template to create a CloudWatch metric alarm to monitor the CPU usage of an EC2 instance in AWS. This template can be easily adapted to monitor other resources, such as disk space or RAM usage, by changing some values in the code.

## Usage Instructions

1. Copy this folder to a directory outside the local repository.
2. Open the `provider-variables.tf` file and change the value of the `region` variable to the AWS region you want to use.
3. Open the `provider-main.tf` file and change the value of the `workspace` variable to the name of the workspace you want to use.
4. Open the `variables.tf` file and change the values of the `ec2_name`, `app_environment`, and `instance_id` variables to reflect the EC2 instance you want to monitor.
5. Open the `metric-alarm-cpu.tf`, `metric-alarm-memory.tf`, and `metric-alarm-storage.tf` files and change the values of the variables according to your needs. Make sure to change the comparison values, limits, evaluation periods, and other settings as necessary.
6. Run the command `terraform init` in the terminal to initialize the Terraform directory.
7. Run the command `terraform plan` to preview the changes that will be made.
8. If you are satisfied with the proposed changes, run the command `terraform apply` to apply them.

## Created Resources

This Terraform template creates the following AWS resources:

- A CloudWatch alarm to monitor an EC2 instance

## Execution

To execute the template, run the following commands in the root folder of the project:

`terraform init`
`terraform validate`
`terraform plan`
`terraform apply`

This will initialize Terraform, verify the configuration, and create the Cloudwatch Alarm in your AWS account.

If you want to destroy the created alarms, run the command:

`terraform destroy`

This will destroy all the resources created by the template.

## Warning

Extreme caution should be exercised in the variables and workspace of your new project.
