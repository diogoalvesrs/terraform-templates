variable "rds_name" {
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

variable "db_instance_identifier" {
  type        = string
  default     = "change_me" #example: "appmax-producao"
  description = "DB Instance Identifier"
}

variable "billing_organization" {
  type        = string
  description = "Tag used to control costs"
  default     = "homolog"
}