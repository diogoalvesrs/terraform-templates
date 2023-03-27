resource "aws_security_group" "elasticache_redis_sg" {
  name        = "${var.redis_name}-sg"
  description = "Permite o acesso Elasticache"
  vpc_id      = var.sg_vpc

  ingress {
    from_port   = 6379
    to_port     = 6379
    protocol    = "tcp"
    cidr_blocks = ["172.18.0.0/16"]
    description = "Permite o acesso a partir da rede do eks"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Env            = var.app_environment
    Service        = "Elasticache"
    Billing        = var.billing_tag
    Name           = var.redis_name
    Managed-by     = "Terraform"
    Gerenciado-por = "Terraform"
  }
}
