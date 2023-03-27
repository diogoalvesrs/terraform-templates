# Terraform Template for creating RDS Aurora MySQL

This is a Terraform template that allows you to create an RDS Aurora MySQL instance on AWS with custom configurations.

## Configuration

Before executing this template, you will need to edit some configuration files:

- Open the `provider-main.tf` file and set a new name for the workspace.
- Open the `provider-variables.tf` file and set the region where you want to create the instance.
- Open the `rds-variables.tf` file and set the values of the necessary variables, such as instance size, unique identifier, username, and password.
- Open the `rds.tf` file and set the security group entries, maintenance window, and backup window as needed.

## Execution

To execute the template, run the following commands in the root folder of the project:

`terraform init`
`terraform validate`
`terraform plan`
`terraform apply`

This will initialize Terraform, check the configuration, and create the RDS instance in your AWS account.

If you want to destroy the RDS instance, run the command:

`terraform destroy`

This will destroy all resources created by the template.

## Warning

Extreme caution in the variables and workspace of your new project.
