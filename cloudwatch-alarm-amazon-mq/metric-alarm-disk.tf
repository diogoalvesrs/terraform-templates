# Create CPU engine metric alarm
resource "aws_cloudwatch_metric_alarm" "alarm_amazon_mq_disk" {
  alarm_name          = "AmazonMQ [${(var.mq_name)}] High Disk Usage"
  comparison_operator = "LessThanOrEqualToThreshold"
  evaluation_periods  = "3"
  metric_name         = "RabbitMQDiskFree"
  namespace           = "AWS/AmazonMQ"
  period              = "300"
  datapoints_to_alarm = "3"
  statistic           = "Average"
  threshold           = "100000000000"
  alarm_description   = ""
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
