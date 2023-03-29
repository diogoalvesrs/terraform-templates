# Create CPU engine metric alarm
resource "aws_cloudwatch_metric_alarm" "alarm_redis_node1_cpu_engine" {
  alarm_name          = "ElastiCache [${(var.elasticache_name)}-${(var.app_environment)}] Node ${(var.cache_node1_id)} - High CPU Engine Utilization"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "1"
  metric_name         = "EngineCPUUtilization"
  namespace           = "AWS/ElastiCache"
  period              = "300"
  datapoints_to_alarm = "1"
  statistic           = "Average"
  threshold           = "90"
  alarm_description   = "Over 90%"
  actions_enabled     = "true"
  alarm_actions = [
    var.sns_topic
  ]
  insufficient_data_actions = []
  dimensions = {
    "CacheClusterId" : var.cache_cluster1_id
    "CacheNodeId" : var.cache_node1_id
  }
  tags = {
    Managed-by = "Terraform"
    Billing    = var.billing_organization
  }
  tags_all = {
    Managed-by = "Terraform"
    Billing    = var.billing_organization
  }
}
# Create CPU metric alarm
resource "aws_cloudwatch_metric_alarm" "alarm_redis_node1_cpu" {
  alarm_name          = "ElastiCache [${(var.elasticache_name)}-${(var.app_environment)}] Node ${(var.cache_node1_id)} - High CPU Utilization"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "1"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/ElastiCache"
  period              = "300"
  datapoints_to_alarm = "1"
  statistic           = "Average"
  threshold           = "90"
  alarm_description   = "Over 90%"
  actions_enabled     = "true"
  alarm_actions = [
    var.sns_topic
  ]
  insufficient_data_actions = []
  dimensions = {
    "CacheClusterId" : var.cache_cluster1_id
    "CacheNodeId" : var.cache_node1_id
  }
  tags = {
    Managed-by = "Terraform"
    Billing    = var.billing_organization
  }
  tags_all = {
    Managed-by = "Terraform"
    Billing    = var.billing_organization
  }
}
# Create CPU engine metric alarm
resource "aws_cloudwatch_metric_alarm" "alarm_redis_node2_cpu_engine" {
  alarm_name          = "ElastiCache [${(var.elasticache_name)}-${(var.app_environment)}] Node ${(var.cache_node2_id)} - High CPU Engine Utilization"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "1"
  metric_name         = "EngineCPUUtilization"
  namespace           = "AWS/ElastiCache"
  period              = "300"
  datapoints_to_alarm = "1"
  statistic           = "Average"
  threshold           = "90"
  alarm_description   = "Over 90%"
  actions_enabled     = "true"
  alarm_actions = [
    var.sns_topic
  ]
  insufficient_data_actions = []
  dimensions = {
    "CacheClusterId" : var.cache_cluster2_id
    "CacheNodeId" : var.cache_node2_id
  }
  tags = {
    Managed-by = "Terraform"
    Billing    = var.billing_organization
  }
  tags_all = {
    Managed-by = "Terraform"
    Billing    = var.billing_organization
  }
}
# Create CPU metric alarm
resource "aws_cloudwatch_metric_alarm" "alarm_redis_node2_cpu" {
  alarm_name          = "ElastiCache [${(var.elasticache_name)}-${(var.app_environment)}] Node ${(var.cache_node2_id)} - High CPU Utilization"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "1"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/ElastiCache"
  period              = "300"
  datapoints_to_alarm = "1"
  statistic           = "Average"
  threshold           = "90"
  alarm_description   = "Over 90%"
  actions_enabled     = "true"
  alarm_actions = [
    var.sns_topic
  ]
  insufficient_data_actions = []
  dimensions = {
    "CacheClusterId" : var.cache_cluster2_id
    "CacheNodeId" : var.cache_node2_id
  }
  tags = {
    Managed-by = "Terraform"
    Billing    = var.billing_organization
  }
  tags_all = {
    Managed-by = "Terraform"
    Billing    = var.billing_organization
  }
}