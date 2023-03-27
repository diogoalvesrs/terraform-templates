# Create CPU engine metric alarm
resource "aws_cloudwatch_metric_alarm" "alarm_amazon_mq_cpu" {
  alarm_name          = "AmazonMQ [${(var.mq_name)}] High CPU Utilization"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "3"
  metric_name         = "SystemCpuUtilization"
  namespace           = "AWS/AmazonMQ"
  period              = "300"
  datapoints_to_alarm = "3"
  statistic           = "Average"
  threshold           = "80"
  alarm_description   = "Over 80%"
  actions_enabled     = "true"
  alarm_actions       = [var.sns_topic_arn]
  insufficient_data_actions = []
  dimensions = {
    "Broker" = var.mq_name
  }
  tags = {
    Managed-by = "Terraform"
    Billing    = var.billing_tag
  }
  tags_all = {
    Managed-by = "Terraform"
    Billing    = var.billing_tag
  }
}
