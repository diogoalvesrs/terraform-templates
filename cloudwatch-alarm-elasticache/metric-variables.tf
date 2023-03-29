variable "elasticache_name" {
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

variable "cache_cluster1_id" {
  type        = string
  default     = "change_me" #example: "appmax-php-7-queue-001"
  description = "Cluster 1 ID"
}

variable "cache_cluster2_id" {
  type        = string
  default     = "change_me" #example: "appmax-php-7-queue-002"
  description = "Cluster 2 ID"
}

variable "cache_node1_id" {
  type        = string
  default     = "change_me" #example: "0001"
  description = "Node 1 ID"
}

variable "cache_node2_id" {
  type        = string
  default     = "change_me" #example: "0002"
  description = "Node 2 ID"
}

variable "billing_organization" {
  type        = string
  description = "Tag used to control costs"
  default     = "homolog"
}