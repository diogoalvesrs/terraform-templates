variable "ec2_name" {
  type        = string
  default     = "new-service"
  description = "EC2 Name"
}

variable "app_environment" {
  type        = string
  default     = "change_me" #example: "homolog" or "production"
  description = "APP Environment"
}

variable "sns_topic" {
  type        = string
  default     = "change_me" #example: "arn:aws:sns:sa-east-1:9487498042307:TEST-alerts"
  description = "SNS Topic"
}

variable "instance_id" {
  type        = string
  default     = "change_me" #example: "i-0ff69f956bf969b27"
  description = "Instance ID"
}

variable "billing_organization" {
  type        = string
  description = "Tag used to control costs"
  default     = "homolog"
}