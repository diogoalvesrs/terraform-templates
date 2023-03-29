output "alarm_name_cpu" {
  value = aws_cloudwatch_metric_alarm.alarme_rds_cpu.alarm_name
}

output "alarm_name_storage_warning" {
  value = aws_cloudwatch_metric_alarm.alarme_rds_storage_warning.alarm_name
}

output "alarm_name_storage_critical" {
  value = aws_cloudwatch_metric_alarm.alarme_rds_storage_critical.alarm_name
}

output "alarm_name_burst_low" {
  value = aws_cloudwatch_metric_alarm.alarme_rds_burst_balance_low.alarm_name
}

output "alarm_name_burst_critical" {
  value = aws_cloudwatch_metric_alarm.alarme_rds_burst_balance_critical.alarm_name
}