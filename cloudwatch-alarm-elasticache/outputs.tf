output "alarm_name_cpu_engine_node1" {
  value = aws_cloudwatch_metric_alarm.alarm_redis_node1_cpu_engine.alarm_name
}

output "alarm_name_cpu_engine_node2" {
  value = aws_cloudwatch_metric_alarm.alarm_redis_node2_cpu_engine.alarm_name
}

output "alarm_name_cpu_node1" {
  value = aws_cloudwatch_metric_alarm.alarm_redis_node1_cpu.alarm_name
}

output "alarm_name_cpu_node2" {
  value = aws_cloudwatch_metric_alarm.alarm_redis_node2_cpu.alarm_name
}

output "alarm_name_memory_node1" {
  value = aws_cloudwatch_metric_alarm.alarm_redis_node1_memory.alarm_name
}

output "alarm_name_memory_node2" {
  value = aws_cloudwatch_metric_alarm.alarm_redis_node2_memory.alarm_name
}

output "alarm_name_swap_node1" {
  value = aws_cloudwatch_metric_alarm.alarm_redis_node1_swap.alarm_name
}

output "alarm_name_swap_node2" {
  value = aws_cloudwatch_metric_alarm.alarm_redis_node2_swap.alarm_name
}