output "alarm_name_cpu" {
  value = aws_cloudwatch_metric_alarm.alarm_amazon_mq_cpu.alarm_name
}

output "alarm_name_memory" {
  value = aws_cloudwatch_metric_alarm.alarm_amazon_mq_memory.alarm_name
}

output "alarm_name_disk" {
  value = aws_cloudwatch_metric_alarm.alarm_amazon_mq_disk.alarm_name
}

output "alarm_name_ack_rate" {
  value = aws_cloudwatch_metric_alarm.alarm_amazon_mq_ack_rate.alarm_name
}

output "alarm_name_confirm_rate" {
  value = aws_cloudwatch_metric_alarm.alarm_amazon_mq_confirm_rate.alarm_name
}

output "alarm_name_message_count" {
  value = aws_cloudwatch_metric_alarm.alarm_amazon_mq_message_count.alarm_name
}

output "alarm_name_publish_rate" {
  value = aws_cloudwatch_metric_alarm.alarm_amazon_mq_publish_rate.alarm_name
}