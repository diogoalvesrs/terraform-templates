# Terraform CloudWatch Alarm Template for Amazon MQ

This Terraform template is used to create a CloudWatch alarm for monitoring an Amazon MQ broker. Before using this template, ensure you have a valid AWS account and that access credentials are configured correctly.

## Usage Instructions

1. Copy this folder to a directory outside of your local repository.
2. Open the `provider-variables.tf` file and change the region to which you want to deploy the CloudWatch alarm.
3. Open the `provider-main.tf` file and change the workspace to the one you want to deploy the CloudWatch alarm to.
4. Open the `metric-variables.tf` file and change the broker name and SNS topic to your desired values.
5. Open each file starting with "metric-alarm" and change the necessary values to meet your specific monitoring needs.
6. Run `terraform init` on the command line to initialize the provider and required modules.
7. Run `terraform plan` on the command line to check for errors and view the changes that will be made.
8. If there are no errors, run `terraform apply` on the command line to deploy the CloudWatch alarm.
9. Verify that the alarm was successfully created in the AWS console.

## Created Resources

This Terraform template creates the following AWS resources:

- A CloudWatch alarm to monitor the Amazon MQ broker

## Execution

To execute the template, run the following commands in the project root folder:

`terraform init`
`terraform validate`
`terraform plan`
`terraform apply`

This will initialize Terraform, check the configuration, and create the Cloudwatch Alarm in your AWS account.

If you want to destroy the created alarms, run the command:

`terraform destroy`

This will destroy all resources created by the template.

## Warning

Extreme attention to variables and workspace in your new project.
