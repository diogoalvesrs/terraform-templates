# Create CPU engine metric alarm
resource "aws_cloudwatch_metric_alarm" "alarme_rds_burst_balance_critical" {
  alarm_name          = "RDS [${(var.rds_name)}-${(var.app_environment)}] Critical BurstBalance percentage"
  comparison_operator = "LessThanOrEqualToThreshold"
  evaluation_periods  = "1"
  metric_name         = "BurstBalance"
  namespace           = "AWS/RDS"
  period              = "300"
  datapoints_to_alarm = "1"
  statistic           = "Average"
  threshold           = "50"
  alarm_description   = ""
  actions_enabled     = "true"
  alarm_actions = [
    var.sns_topic
  ]
  insufficient_data_actions = []
  dimensions = {
    "DBInstanceIdentifier" = var.db_instance_identifier
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
