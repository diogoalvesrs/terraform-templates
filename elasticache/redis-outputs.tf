output "redis_arn" {
  value = aws_elasticache_cluster.elasticache_redis.arn
}

output "redis_cache_nodes" {
  value = aws_elasticache_cluster.elasticache_redis.cache_nodes
}
