variable "db_name" {
  type        = string
  default     = "new-service-homolog"
  description = "DB Name - RDS Name"
}

variable "user_name" {
  type        = string
  default     = "change_me"
  description = "ROOT username"
}

variable "password" {
  type        = string
  default     = "change_me"
  description = "ROOT password"
}

variable "app_environment" {
  type        = string
  default     = "change_me" # Change to homolog or production
  description = "APP Environment"
}

variable "app_name" {
  type        = string
  default     = "new-service-rds-homolog"
  description = "APP Name"
}

variable "subnet_group_name" {
  type        = string
  default     = "change_me"
  description = "RDS - Subnet Group"
}

variable "allocated_storage" {
  type        = string
  default     = "40"
  description = "Allocateg Storage"
}

variable "storage_type" {
  type        = string
  default     = "gp3"
  description = "Storage Type"
}

variable "engine_version" {
  type        = string
  default     = "change_me" #example: "14.6"
  description = "Engine Version"
}

variable "instance_class" {
  type        = string
  default     = "change_me"
  description = "Instance Class"
}

variable "billing_tag" {
  type        = string
  default     = "change_me"
  description = "Billing Tag"
}

variable "env_tag" {
  type        = string
  default     = "change_me" #homolog or production
  description = "Enviroment AWS Tag"
}

variable "sg_vpc" {
  type        = string
  default     = "change_me" #example: vpc-0d8907d3ef6e84887 
  description = "Security Group VPC"
}