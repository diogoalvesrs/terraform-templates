variable "app_environment" {
  type        = string
  default     = "change_me" #example: "homolog" or "producao"
  description = "APP Environment"
}

variable "redis_name" {
  type        = string
  default     = "new-service-redis"
  description = "REDIS Name"
}

variable "redis_node_type" {
  type        = string
  default     = "change_me" #example: "cache.t4g.micro"
  description = "REDIS Node type"
}

variable "redis_parameter_group_name" {
  type        = string
  default     = "change_me" #example: "default.redis6.x"
  description = "REDIS Parameter Group"
}

variable "redis_engine_version" {
  type        = string
  default     = "change_me" #example: "6.x"
  description = "REDIS Engine Version"
}


variable "redis_subnet_group" {
  type        = string
  default     = "change_me" #example: "subnet-group-eks-develop"
  description = "REDIS Subnet Group"
}

variable "billing_tag" {
  type        = string
  default     = "change_me" #example: "breaking-code"
  description = "REDIS Subnet Group"
}

variable "sg_vpc" {
  type        = string
  default     = "change_me" #example: "vpc-0d89d9649c956f887"
  description = "REDIS Subnet Group"
}