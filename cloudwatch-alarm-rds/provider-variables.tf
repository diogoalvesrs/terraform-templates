#####################################
## AWS Provider Module - Variables ##
#####################################

# AWS connection & authentication

variable "aws_region" {
  type        = string
  default     = "sa-east-1"
  description = "AWS region"
}
