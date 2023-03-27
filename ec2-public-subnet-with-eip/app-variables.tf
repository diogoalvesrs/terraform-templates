####################################
## Application Module - Variables ##
####################################

# Application definition

variable "app_name" {
  type        = string
  description = "Application name" # declare in terraform.tfvars
}

variable "app_environment" {
  type        = string
  description = "Application environment" # declare in terraform.tfvars
}
