# Terraform Elasticache Redis Template

This Terraform template allows you to deploy an Amazon Web Services (AWS) Elasticache Redis cluster with the necessary resources and configurations.

## Prerequisites

Before running this template, make sure you have:

- AWS credentials with sufficient permissions to create Elasticache resources.
- Terraform installed on your local machine.
- Basic knowledge of Terraform and AWS Elasticache Redis.

## Usage

Modify the following files according to your needs:

### `provider-main.tf`
- Change the workspace name to a unique name that identifies your deployment.

### `provider-variables.tf`
- Modify the `region` variable to specify the region where you want to deploy your Elasticache Redis cluster.

### `redis-elasticache-variables.tf`
- Modify variables such as `subnet_ids`, `cluster_name`, `node_type`, `number_of_nodes`, etc., to meet your needs.

### `redis-elasticache.tf`
- Modify the `snapshot_window` and `maintenance_window` variables to specify the maintenance and snapshot window that meets your needs.

### `security-group-redis-elasticache.tf`
- Make necessary changes to specify the ingress and egress rules for your security group.

## Execution

To execute the template, run the following commands in the project root folder:

`terraform init`
`terraform validate`
`terraform plan`
`terraform apply`

This will initialize Terraform, validate the configuration, and create the ElastiCache instance in your AWS account.

If you want to destroy the ElastiCache instance, run the command:

`terraform destroy`

This will destroy all resources created by the template.

## Warning

Extreme caution is advised with the variables and workspace of your new project.
