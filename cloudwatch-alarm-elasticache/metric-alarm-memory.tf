# Create Memory metric alarm
resource "aws_cloudwatch_metric_alarm" "alarm_redis_node1_memory" {
  alarm_name          = "ElastiCache [${(var.elasticache_name)}-${(var.app_environment)}] Node ${(var.cache_node1_id)} - High Database Memory Usage"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "1"
  metric_name         = "DatabaseMemoryUsagePercentage"
  namespace           = "AWS/ElastiCache"
  period              = "300"
  datapoints_to_alarm = "1"
  statistic           = "Average"
  threshold           = "50"
  alarm_description   = "Over 50%"
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
# Create Memory metric alarm
resource "aws_cloudwatch_metric_alarm" "alarm_redis_node2_memory" {
  alarm_name          = "ElastiCache [${(var.elasticache_name)}-${(var.app_environment)}] Node ${(var.cache_node2_id)} - High Database Memory Usage"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "1"
  metric_name         = "DatabaseMemoryUsagePercentage"
  namespace           = "AWS/ElastiCache"
  period              = "300"
  datapoints_to_alarm = "1"
  statistic           = "Average"
  threshold           = "50"
  alarm_description   = "Over 50%"
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