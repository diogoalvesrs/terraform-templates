output "db_instance_name" {
  value = aws_db_instance.db_instance.name
}

output "db_instance_address" {
  value = aws_db_instance.db_instance.address
}

output "db_endpoint" {
  value = aws_db_instance.db_instance.endpoint
}

output "db_maintenance_window" {
  value = aws_db_instance.db_instance.maintenance_window
}
