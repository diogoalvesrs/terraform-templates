variable "mq_name" {
  type        = string
  default     = "change_me" # set name of broker host example: "var.mq_name"
  description = "Amazon MQ Name"
}

variable "sns_topic_arn" {
  type        = string
  default     = "change_me" # example: "arn:aws:sns:sa-east-1:872346230946:MQ-Alerts"
  description = "Amazon MQ Name"
}

variable "billing_tag" {
  type        = string
  default     = "change_me" # example: production
  description = "Billing Tag"
}