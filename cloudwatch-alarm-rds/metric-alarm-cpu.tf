# Create CPU engine metric alarm
resource "aws_cloudwatch_metric_alarm" "alarme_rds_cpu" {
  alarm_name          = "RDS [${(var.rds_name)}-${(var.app_environment)}] High CPU Utilization"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "10"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/RDS"
  period              = "300"
  datapoints_to_alarm = "5"
  statistic           = "Average"
  threshold           = "80"
  alarm_description   = "Over 80%"
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
