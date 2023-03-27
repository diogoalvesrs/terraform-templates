# Create CPU engine metric alarm
resource "aws_cloudwatch_metric_alarm" "alarm_amazon_mq_message_count" {
  alarm_name          = "AmazonMQ [${(var.mq_name)}] High number of messages"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "2"
  metric_name         = "MessageCount"
  namespace           = "AWS/AmazonMQ"
  period              = "300"
  datapoints_to_alarm = "2"
  statistic           = "Average"
  threshold           = "4000"
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
