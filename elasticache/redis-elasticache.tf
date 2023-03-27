resource "aws_elasticache_cluster" "elasticache_redis" {
  cluster_id           = var.redis_name
  engine               = "redis"
  node_type            = var.redis_node_type
  num_cache_nodes      = 1
  parameter_group_name = var.redis_parameter_group_name
  engine_version       = var.redis_engine_version

  port               = 6379
  subnet_group_name  = var.redis_subnet_group
  security_group_ids = [aws_security_group.elasticache_redis_sg.id]

  maintenance_window       = "tue:01:00-tue:02:00"
  snapshot_retention_limit = 7
  snapshot_window          = "03:00-04:00"

  tags = {
    Env            = var.app_environment
    Service        = "Elasticache"
    Billing        = var.billing_tag
    Name           = "${(var.redis_name)}-${(var.app_environment)}"
    Managed-by     = "Terraform"
    Gerenciado-por = "Terraform"
  }
}