########################################
## Virtual Machine Module - Variables ##
########################################

variable "linux_instance_type" {
  type        = string
  description = "EC2 instance type for Linux Server"
  default     = "t3a.small"
}

variable "linux_ami" {
  type        = string
  description = "AMI"
  default     = "ami-0970638a979a1415a" #Ubuntu 20.04
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
  default     = "vpc-id"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID"
  default     = "subnet-id"
}

variable "key_name" {
  type        = string
  description = "Key pair"
  default     = "your-key"
}

variable "linux_associate_public_ip_address" {
  type        = bool
  description = "Associate a public IP address to the EC2 instance"
  default     = true
}

variable "linux_root_volume_size" {
  type        = number
  description = "Volumen size of root volumen of Linux Server"
}

variable "linux_root_volume_type" {
  type        = string
  description = "Volumen type of root volumen of Linux Server. Can be standard, gp3, gp2, io1, sc1 or st1"
  default     = "gp3"
}

variable "billing_tag" {
  type        = string
  description = "Tag usada para controlar os custos"
  default     = "your-tag"
}

variable "role_ec2_basico_gerenciamento" {
  type        = string
  description = "Role com permissoes necessarias para que a EC2 possa gravar logs no Cloudwatch possa ser gerenciada via SSM entre outros"
  default     = "EC2-basico-gerenciamento"
}
