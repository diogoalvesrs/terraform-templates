output "alarm_name_cpu" {
  value = aws_cloudwatch_metric_alarm.alarm_ec2_cpu.alarm_name
}

output "alarm_name_memory" {
  value = aws_cloudwatch_metric_alarm.alarm_ec2_ram.alarm_name
}

output "alarm_name_storage" {
  value = aws_cloudwatch_metric_alarm.alarm_ec2_disk_space.alarm_name
}