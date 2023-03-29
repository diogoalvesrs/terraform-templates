# Create CPU engine metric alarm
resource "aws_cloudwatch_metric_alarm" "alarm_ec2_cpu" {
  alarm_name          = "EC2 [${(var.ec2_name)}-${(var.app_environment)}] High CPU Utilization"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 5
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 300
  datapoints_to_alarm = 5
  statistic           = "Average"
  threshold           = 80
  alarm_description   = "Over 80%"
  actions_enabled     = true
  alarm_actions       = [var.sns_topic]
  insufficient_data_actions = []
  dimensions = {
    "InstanceId" = var.instance_id
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
